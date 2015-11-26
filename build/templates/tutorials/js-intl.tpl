[h1=start]Data po polsku[/h1]
[p]Dzisiaj będzie krótko, rzeczowo i na temat (co dość rzadko mi się zdarza). Otóż: jak [b]dobrze[/b] zrobić datę po polsku w JS i się przy tym nie narobić.[/p]

[h2="po-staremu"]Po staremu[/h2]
[p]Dotąd jedynym właściwym sposobem były różne dziwne kombinacje typu "stwórzmy sobie tablicę z polskimi nazwami miesięcy i dni tygodnia, a następnie podstawiajmy pod dane, zwracane przez [tt]new Date[/tt]". Mogą one wyglądać [url=http://webmade.org/porady/data-po-polsku-js.php]rozwlekle i odpychająco[/url] (a ich autorem nie jest Polak :D). Mogą być też [url=http://phpjs.org/functions/strftime/]wzorowane na innych językach[/url], stając się jeszcze bardziej rozwlekłe i… nie JS-owe. Mogą w końcu zmienić się po prostu w wywołanie odpowiedniej, krótkiej funkcyjki w PHP, po stwierdzeniu, że JS się do tego nie nadaje.[/p]

[h2="Intl"]Na ratunek [tt]Intl[/tt][/h2]
[p]Na szczęście się to zmieniło. I to nie znowu tak niedawno (bo w 2012) - wtedy powstał standard [url=http://www.ecma-international.org/ecma-402/1.0/]ECMA-402 (ECMAScript Internationalization API)[/url]. Oczywiście na odzew ze strony producentów przeglądarek trzeba było ciut poczekać, niemniej - jeśli wierzyć [url=https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl#Browser_Compatibility]MDN[/url] - działa dziś wszędzie, oprócz Safari i - co prawdopodobnie może być o wiele ważniejsze - node.js (jednak od czego jest niezawodny GitHub i [url=https://github.com/andyearnshaw/Intl.js]polyfille[/url]; oczywiście w node.js/io.js [url=https://github.com/nodejs/io.js#intl-ecma-402-support]obsługę można sobie wkompilować[/url]).[/p]
[p]Cały standard składa się z 3 głównych "klas", zamkniętych w krótkiej i schludnej przestrzeni nazw - [tt]Intl[/tt]. Są to:[/p]
[list]
	[*] [tt]Intl.Collator[/tt] - służący do porównywania tekstu
	[*] [tt]Intl.NumberFormat[/tt] - służący do formatowania wszelkiej maści liczb (między innymi walut czy liczebników porządkowych)
	[*] [tt]Intl.DateTimeFormat[/tt] - tak, tego właśnie użyjemy ;)
[/list]

[h2="formatujemy"]Formatujemy datę[/h2]
[p]Żeby wyświetlić ładną datę po polsku, musimy stworzyć nowy obiekt "klasy" [tt]Intl.DateTimeFormat[/tt]. Jako pierwszy parametr konstruktor bierze nazwę języka (oczywiście zgodną ze standardem ISO, zatem dwuliterowy skrót):[/p]
[code=javascript]var formatter = new Intl.DateTimeFormat('pl');[/code]
[p]Już! Pierwszy krok za nami - mamy obiekt wyświetlający datę po polsku. Udostępnia on aż jedną metodę - [tt]format[/tt], która formatuje przekazaną jej datę (jeśli jej nie podamy, zastosuje aktualną - przynajmniej w Chrome; polecam jednak ją podawać dla zwiększenia czytelności kodu).[/p]
[code=javascript]formatter.format(new Date()); //23.5.2014[/code]
[p]Jak widać, mało imponujące - równie dobrze można to uznać za datę po angielsku. Na pomoc przychodzi nam drugi parametr konstruktora [tt]Intl.DateTimeFormat[/tt] - jest to obiekt opcji. Przyjrzyjmy się takiemu przykładowi:[/p]
[code=javascript]var formatter = new Intl.DateTimeFormat('pl', {
	day: 'numeric'
	,month: 'long'
	,year: 'numeric'
});
formatter.format(new Date()); //23 maja 2014[/code]
[p][i]Voilla![/i] To jest dokładnie to, o co nam chodziło. Oczywiście opcji jest więcej, po dokładny ich spis [url=https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/DateTimeFormat#Parameters]zapraszam na MDN[/url].[/p]
