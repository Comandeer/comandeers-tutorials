[description]Ciekawy trick zaczerpnięty z archiwów Opery.[/description]
[h1="start"][JavaScript] Ukrywanie ciała funkcji[/h1]

[p=warning]Niestety, w nowych wersjach Chrome ta metoda już nie działa i dostajemy pełen dostęp do ciała funkcji.[/p]
[p=info]Na wstępie uprzedzę, że technika ta nie powstała w mym płodnym umyśle. Została znaleziona przez [url=http://web.archive.org/web/20130907212310/http://my.opera.com/hallvors/blog/2012/03/20/debugging-maps-google-maps]developera Opery[/url] w czasie debugowania pewnego upierdliwego błędu w działaniu Google Maps w tejże przeglądarce. Jak nietrudno zgadnąć, zostało to w bólach znalezione w źródle tego zaawansowanego webappa. Ja jedynie postanowiłem to wykorzystać na szerszą skalę. Trzeba też zaznaczyć, że technika ta jest średnio przydatna jeśli nie zaciemnimy równocześnie źródła skryptu (np. poprzez uglify.js czy też GCC).[/p]
[p]O co wgl chodzi? A no chodzi o pewną magiczną właściwość poniższego fragmentu kodu:[/p]
[code=javascript]Function.prototype[/code]
[p]Niby co w tym takiego nadzwyczajnego? Już mówię![/p]
[code=javascript]console.log( Function.prototype.call.apply( Function.prototype.bind, [ function(){} ] ) );[/code]
[p]Zapewne w większości powyższy kod wzbudza podświadomy lęk. Przyznać trzeba, że naprawdę wygląda dość dziwacznie. Ale postaram się troszkę przybliżyć jego sens.[/p]
[p]Zacznijmy od [tt]Function.prototype[/tt]. Jak już kiedyś wspomniałem, JS jest takim mocno zboczonym językiem, gdzie wszystko jest obiektem. Nic zatem dziwnego, że funkcje są tak naprawdę… obiektami "klasy" [tt]Function[/tt] ("klasy", bo jak wiadomo ECMAScript to jedyna grupa języków prototypowanych). Zatem każda zmiana w prototypie tego globalnego obiektu będzie dziedziczona przez wszystkie funkcje. Jednak tutaj skrypterzy Google poszli o krok dalej i wywołują poszczególne metody prosto z prototypu (czasami, ale to bardzo rzadko, okazuje się to przydatne)![/p]
[p]Zatem jakie metody się tu wywołuje? [tt]call[/tt], [tt]apply[/tt] i [tt]bind[/tt]. Wszystkie działają dość podobnie i ich głównym zadaniem jest zmienienie kontekstu wywołania funkcji ([tt]this[/tt]). Już wyjaśniam na przykładzie:[/p]
[code=javascript]var d = { n: 1 };

function g() {
	console.log( this );
}

g.apply( d );[/code]
[p]To wywołanie funkcji wyrzuci do konsoli obiekt [tt]d[/tt] zamiast standardowego [tt]window[/tt].Dość użyteczne, pod warunkiem, że pisze się obiektowy JS i trochę kojarzy pojęcie kontekstu wywołania. Dla nas jednak nie jest to aż tak ważne. Wystarczy wiedzieć, że [tt]apply[/tt] przyjmuje jako pierwszy parametr obiekt, który ma zastąpić nam [tt]this[/tt], a drugim parametrem jest tablica parametrów wywoływanej funkcji. Przykład, bo brzmi to dziwnie:[/p]
[code=javascript]function g( r ) {
	console.log( r );
};

g.apply( window, [ 'whatever' ] );[/code]
[p]W konsoli ujrzymy wspaniały napis [tt]whatever[/tt]. [tt]call[/tt] w zasadzie działa tak samo, ale zamiast tablicy parametrów, przyjmuje ich listę:[/p]
[code=javascript]function g( r ) {
	console.log( r );
};

g.call( window, 'whatever' );[/code]
[p]Efekt identyczny jak w poprzednim przykładzie. Trochę inaczej działa [tt]bind[/tt], ponieważ nie wywołuje funkcji w podanym kontekście, a zwraca jej "klona", działającego w danym scope. Dla kompletności przykład, z wiadomym wynikiem:[/p]
[code=javascript]function g( r ) {
	console.log( r );
};
( g.bind( window, [ 'whatever' ] ) )();[/code]
[p]Zatem gdy trochę się wysili szare komórki, można dojść do pewnego uogólnienia, że w bardzo zawoalowany sposób po prostu wywołujemy [tt]Function.prototype.bind[/tt].[/p]
[p]OK, a teraz gwóźdź programu: co nam daje połączenie tych trzech metod? A no, przy dobrze zaciemnionym kodzie bardzo utrudnia podejrzenie działania naszych funkcji i ukrywa to przed debuggerami. Kod[/p]
[code=javascript]console.log( Function.prototype.call.apply( Function.prototype.bind, [ function() {} ] ) );[/code]
[p]zwróci nam bowiem nic nie mówiące[/p]
[code=javascript]function() { [native code] }[/code]
[p]Chyba nie muszę mówić jaką konsternację na twarzy młodocianego hakiera zrobi informacja, że nasza super-hiper-tajna funkcja, w której zaimplementowaliśmy czekający na opatentowanie algorytm, uparcie twierdzi, że jest funkcją wbudowaną i to na dodatek bez nazwy![/p]
[p]I zanim polecisz opakowywać wszystkie swoje funkcje w ten sposób, wiadro zimnej wody dla ochłody: [b]KOMPATYBILNOŚĆ[/b]. Tak, wiem, że wiesz, że ja wiem, że wiesz, że nie działa to w IE < 9 – przecież to logiczne! Ale niestety rynek tych przeglądarek wciąż jest dośc spory. Toteż – dla własnej wygody i kompatybilności – napiszmy sobie prostą funkcję pomocniczą. Nazwijmy ją (a jakże!) [tt]obfuscate[/tt]. Użyjemy tu dwóch bardziej zaawansowanych elementów JS: funkcji natychmiastowego wywołania oraz closures (i w tym miejscu większość mniej zdeterminowanych postanowiła zamknąć tą kartę przeglądarki). Niech Was nie zwiodą pozory – wcale to (aż tak) trudne nie będzie! Na początku zadeklarujmy sobie swoją funkcję:[/p]
[code=javascript]var obfuscate = ( function() {
}() );[/code]
[p]To jest właśnie tzw. funkcja natychmiastowego wywołania (IIFE – Immediately Invoked Function Expression). Jak nietrudno zgadnąć, nazywa się tak, bo od razu po zadeklarowaniu jest wywoływana (to tak naprawdę jest wywołanie funkcji anonimowej). Na razie nasz kod jest bezużyteczny, bo zmienna [tt]obfuscate[/tt] będzie miała wartość [tt]undefined[/tt]. Toteż trzeba dodać do naszej funkcji [tt]return[/tt]:[/p]
[code=javascript]var obfuscate = ( function() {
	return function( func ) {
		return Function.prototype.call.apply( Function.prototype.bind, [ func ] );
	};
}() )[/code]
[p]Tak, to jest właśnie closure – funkcja zwracana przez inną funkcję, zamknięta w jej obszarze (no ej, w końcu to technika od samego Google; nikt nie mówił, że łatwo będzie). Tak naprawdę, gdy JS się wczyta, przeglądarka otrzyma coś takiego:[/p]
[code=javascript]var obfuscate = function( func ) {
	return Function.prototype.call.apply( Function.prototype.bind, [ func ] );
}[/code]
[p]Czemu zatem nie zapisałem tego w taki sposób? Otóż przez IE 8 tak nie zapisałem! Trzeba przecież sprawdzić czy ta metoda ukrywania kodu jest wspierana i w zależności od tego funkcja [tt]obfuscate[/tt] przyjąć może dwie postaci:[/p]
[list]
	[*] zaciemni nam kod,
	[*] zwróci niezaciemniony kod.
[/list]
[p]A jak sprawdzić czy technika jest obsługiwana? Można sprawdzić czy przeglądarka wysypie się na wywołaniu zaciemnionej w taki sposób funkcji. Ok, ale to nam zatrzyma wykonywanie skryptu… chyba że wrzucimy do tego obsługę wyjątków![/p]
[code=javascript]try {
	Function.prototype.call.apply( Function.prototype.bind, [ function() {} ] )();
} catch ( err ) {}[/code]
[p]Dobra, zwracanie niezaciemnionego kodu jest łatwe – wystarczy zwrócić parametr [tt]func[/tt]. Tyle. Zatem po połączeniu wszystkiego razem, otrzymamy coś takiego:[/p]
[code=javascript]var obfuscate = ( function() {
	var a = Function.prototype;

	try {
		a.call.apply( a.bind, [ function() {} ] )();
	} catch ( err ) {
		return function( func ) {
			return func;
		};
	}

	return function( func ) {
		return a.call.apply( a.bind, [ func ] );
	};
}() );[/code]
[list]
	[*] Najpierw przypisujemy sobie [tt]Function.prototype[/tt] do zmiennej [tt]a[/tt] (żeby się później nie napisać i oszczędzić te parę bajtów).
	[*] Sprawdzamy, czy obfuskacja w ogóle działa w bloku [tt]try[/tt]/[tt]catch[/tt]. Jeśli nie, jak gdyby nigdy nic zwracamy funkcję zwracającą parametr [tt]func[/tt] (nieźle to brzmi).
	[*] W innych przypadkach po prostu zwracamy funkcję zwracającą zaciemnioną funkcję
[/list]
[p]Przykład:[/p]
[code=javascript]var f = obfuscate( function( n, r ) {
	return n + ':' + r;
} );
console.log( f( 'r', 't' ) ); // "r:t"
console.log( f ); // function () { [native code] }[/code]
[p]Demo online nie wstawiam, bo raczej za dynamiczne by nie było.[/p]
[p]Aaaaa, i taka uwaga na koniec: moja funkcja [tt]obfuscate[/tt] bardzo lubi strict mode![/p]
