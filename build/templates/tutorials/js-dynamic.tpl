[h1="start"]Dynamiczne wczytywanie skryptów[/h1]
[p]Umieszczając JS na swojej stronie, zapewne nieraz słyszałeś, że masz je umieścić na końcu [tt]body[/tt] i najlepiej je wsadzić w jeden, góra trzy pliki i [url=https://github.com/mishoo/UglifyJS/]zminifikować[/url]. Takie są standardowe zalecenia dotyczące JavaScript na stronie. Ale czy istnieje jakaś alternatywa? Przecież wiadomo, że nawet po wykonaniu tych wszystkich kroków, w tym niby mniejszym pliku JS znajduje się pełno kodu, który nie zostanie wykorzystany na danej podstronie (no przecież nie wszędzie wpychamy slider czy też okienka). Okazuje się, że istnieje! Zwie się "dynamiczne (leniwe) ładowanie skryptów".[/p]

[h2="co-to"]Co to?[/h2]
[p]Jeśli znasz PHP, na pewno słyszałeś o autoładowaniu klas. Jak to działa?[/p]
[code=php]function __autoload(string $name) {
	require_once('/tajny/folder/z_klasami/' . $name . '.php');
}
$p = new Klasaktorejwczesniejniktniezaladowalaitaknierzucibledu();[/code]
[p]Czemu nasza klasa o zbyt długiej nazwie błędu nie rzuci? Bo PHP – dzięki magii [tt]__autoload[/tt] – przy próbie utworzenia jej instancji, załączy plik z nią! Na podobnej zasadzie działa to w JS.[/p]

[h2="ninja"]Sposób na ninja[/h2]
[p]Ten sposób stosują "dostawcy usług zewnętrznych", czyli np. widgety Google+, Twittera, Facebooka, a także Google Analytics. Przykładowy kod (z Google+):[/p]
[code=markup]<script type="text/javascript">
	window.___gcfg = {lang: 'pl'};
	(function() {
		var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
		po.src = 'https://apis.google.com/js/plusone.js';
		var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
	})();
</script>[/code]
[p]Jak to działa? [tt]window.___gcfg[/tt] robi tutaj za ekwiwalent przestrzeni nazw (które to pojęcie wytłumaczyłem w [url=http://comandeer.pl/tutorials/js-beauty.html#namespaces]innym tutorialu[/url]), w której Google przechowuje sobie ustawienia dla swojego widgetu (jak na razie głównie język). Później pojawia się interesująca nas część. Otóż zostaje utworzony dynamicznie znacznik [tt]script[/tt] (żeby nie brudzić globalnego scope, zrobiono to w funkcji natychmiastowego wywołania; też wytłumaczone w tamtym tutku) i wstawiony do dokumentu. Przenalizujmy to sobie[/p]
[code=javascript]var po = document.createElement('script');[/code]
[p]Ta linijka tworzy właśnie znacznik [tt]script[/tt]. w ten sposób można tworzyć dowolne znaczniki (nawet te nieistniejące). Zapisujemy sobie go do zmiennej [tt]po[/tt], żeby móc go później wygodnie używać. Następnie nadajemy mu potrzebne atrybuty: [tt][type][/tt], [tt][async][/tt] i [tt][src][/tt]. Tak naprawdę jeśli nadalibyśmy sam [tt][src][/tt], powyższy kod działałby równie dobrze. Atrybut [tt][type][/tt] i tak jest zbędny w HTML5. Natomiast dziwić może fakt, że można usunąć [tt][async][/tt] (jak sama nazwa wskazuje, wymusza asynchroniczne wczytywanie skryptu). Mathias Bynens wyjaśnia:[/p]
[quote="http://mathiasbynens.be/notes/async-analytics-snippet"]Kyle Simpson points out that all dynamically inserted scripts default to .async=true as per the spec. Most browsers have always implemented it this way. The only exceptions are Firefox 3.6 and Opera 10+, who execute scripts in insertion order by default, which may cause an unnecessary delay. By setting .async=true explicitly we make sure ga.js doesn’t wait for other previously loaded scripts and doesn’t block any subsequently loaded scripts. This line of code only affects Firefox 3.6. (Sadly, it doesn’t seem to make a difference in Opera). If you’re not using any other scripts, or Firefox 3.6 support is not an issue, you can safely remove it to save even more bytes[/quote]
[p]Zatem powyższy kod można spokojnie skrócić, wywalając ustawianie [tt][type][/tt] i [tt][async][/tt] – ważne jest jedynie [tt][src][/tt] (w końcu jakiś skrypt musimy wczytać).[/p]
[p]Kolejna linijka to wstawianie skryptu na stronę. Wstawiamy go w rodzicu pierwszego elementu [tt]script[/tt] na stronie… Zaraz? Że co? A czemu tak? Otóż skrypt Google+ (czy też Google Analytics) jest skryptem zewnętrznym i nie ma jakiejkolwiek kontroli nad kodem strony, na której jest umieszczany. Równie dobrze taka strona może wyglądać tak:[/p]
[code=markup]<!DOCTYPE html>
	<meta charset="UTF-8">
	<title>Tytuł</title>
	<p>reszta</p>[/code]
[p]Taki kod jest w pełni poprawnym HTML5 (a ile można znaleźć niepoprawnych, to też wiadomo) – nie ma tu ani [tt]head[/tt], ani [tt]body[/tt], do których tradycyjnie wstawia się skrypty. Dlatego też nie można sobie pozwolić na założenie, że na stronie, nad którą nie mamy kontroli, te elementy istnieją. Natomiast rodzic pierwszego elementu [tt]script[/tt] istnieć musi. Czemu? Na początek znajdźmy ten "pierwszy element [tt]script[/tt]". Wiesz co to? Tak, to nasz skrypt wstawiający znacznik [tt]script[/tt] (czyli ten, co właśnie go omówiłem, jeśli wciąż masz wątpliwości)! A co jest jego rodzicem? Coś musi być – na pewno znajduje się w [tt]document[/tt] (to de facto główny węzeł [url=https://developer.mozilla.org/en-US/docs/DOM]DOM[/url], który istnieje zawsze). Zatem jeśli nie znasz strony, na której pracujesz, a masz tam coś wstawić, wstaw to w rodzica elementu, który na pewno istnieje.[/p]
[p]Ten sposób wstawiania skryptów jednak nie daje dużej kontroli nad procesem jego wczytywania – po prostu go wstawia… i tyle. Jednak jest doskonałym punktem wyjścia do własnych rozwiązań.[/p]

[h2="prymitywny"]Sposób prymitywny[/h2]
[p]Zatem chcesz wczytywać swój skrypcik i dopiero po jego wczytaniu odpalić zadania, za które jest odpowiedzialny? OK, to musisz odkryć kiedy nasz dynamicznie wstawiony skrypt zostanie wczytany! Na szczęście nie jest to zadanie trudne, bo odpowiada za to zdarzenie [tt]load[/tt] – to dla niego należy dodać nasze zadania. A jak to zrobić najwygodniej? Za pomocą funkcji![/p]
[code=javascript]function addScript( uri, callback ) {

}[/code]
[p]Jak na razie jest pusta, ale to za chwilę się zmieni. Na sam początek warto sprawdzić czy [tt]uri[/tt] jest prawdziwym URI (albo przynajmniej czy jest tekstem – w tym przypadku właśnie to sprawdzę, dla uproszczenia sprawy, ale w rzeczywistym projekcie lepiej jednak użyć [url=http://mathiasbynens.be/demo/url-regex]odpowiedniego wyrażenia regularnego[/url]). Jeśli nie, przerywamy funkcję.[/p]
[code=javascript]if ( typeof uri !== 'string' ) {
	return false;
}[/code]
[p=info]Zamiast zwrócić fałsz, można walnąć wyjątkiem.[/p]
[p]Kolejny krok to stworzenie naszego znacznika [tt]script[/tt]:[/p]
[code=javascript]var s = document.createElement( 'script' );
s.src = uri;[/code]
[p]Pomijam tutaj zarówno atrybut [tt][async][/tt], jak i [tt][type][/tt], ale możesz je dodać ([url=http://mathiasbynens.be/notes/async-analytics-snippet]spowalniając nieco skrypt[/url]).[/p]
[p]Następnie wstawiamy skrypt na stronę:[/p]
[code=javascript]document.body.appendChild( s );[/code]
[p]Wstawiam do [tt]body[/tt], bo to moja strona i na mojej stronie [tt]body[/tt] jest zawsze. Jeśli nie chcesz stosować [tt]body[/tt], wstawiaj skrypt w podobny sposób, jak robi to Google.[/p]
[p]Teraz część z odpalaniem zadań po załadowaniu skryptu. Skorzystamy z częstej taktyki programistów JS – callbacków. Jak widzisz, drugi parametr funkcji [tt]addScript[/tt] właśnie tak się nazywa. Cóż to ten callback? To taka "funkcja zwrotna". Przydaje się najczęściej przy skryptach asynchronicznych (czyt. Ajax). Z racji tego, że są wykonywane asynchronicznie, reszta kodu nie musi czekać aż skończą swe działanie. Z tego też względu nie można z działań asynchronicznych zwrócić wartości… I ten problem rozwiązuje callback. Funkcja ta jest wywoływana przez funkcję asynchroniczną w chwili, gdy ta kończy swe działanie. Najczęściej callback otrzymuje jako parametr to, co wygeneruje funkcja asynchroniczna (np. treść strony, którą pobraliśmy Ajaksem). Jeśli kiedyś korzystałeś z Ajaksu w jQuery, callbacki nie są dla Ciebie obce ([tt]success[/tt], [tt]error[/tt]…) i wiesz na jakiej zasadzie działają. Jeśli nie wiesz, to za chwilę zobaczysz jeden w akcji.[/p]
[p]Oczywiście musimy mieć pewność, że nasz [tt]callback[/tt] jest funkcją. Sprawdzimy to przy pomocy operatora [tt]typeof[/tt]. Jeśli jest funkcją, należy przypisać go do zdarzenia [tt]load[/tt] naszego skryptu:[/p]
[code=javascript]if (typeof callback === 'function' ) {
	s.onload = callback;
}[/code]
[p]Voila! Czemu nie zastosowałem tutaj [tt]addEventListener[/tt]? Ze względu na IE 8. Zresztą – tak jest ciut szybciej.[/p]
[p]Całość naszej funkcji wygląda następująco:[/p]
[code=javascript]function addScript( uri, callback ) {
	if ( typeof uri !== 'string' ) {
		return false;
	}

	var s = document.createElement( 'script' );
	s.src = uri;

	document.body.appendChild( s );

	if ( typeof callback === 'function' ) {
		s.onload = callback;
	}
}[/code]
[p]Przykład zastosowania:[/p]
[code=markup]<!DOCTYPE html>
	<html lang="pl" dir="ltr">
		<head>
			<meta charset="UTF-8">
			<title>Ehhhh</title>
		</head>
		<body>
			<script>
			function addScript( uri, callback ) {
				if ( typeof uri !== 'string' ) {
					return false;
				}

				var s = document.createElement( 'script' );
				s.src = uri;

				document.body.appendChild( s );

				if ( typeof callback === 'function' ) {
					s.onload = callback;
				}
			}

			addScript( 'http://comandeer.pl/js/zoom.js', function() {
				console.log( 'Wczytano skrypt' );
			} );
			</script>
		</body>
	</html>[/code]
[p]Gdy skrypt się wczyta, do konsoli zostanie dodany wpis "Wczytano skrypt".[/p]

[h2="rozbudowanszy"]Sposób rozbudowańszy[/h2]
[p]"Czemu to rozbudowywać?" – zapytasz. A ja odpowiem: spróbuj załadować jQuery i jakiś skrypt od niego zależny. Na bank okaże się, że często to ten drugi skrypt wczyta się pierwszy. Musimy jakoś upewnić się, że zostanie zachowana narzucona kolejność wczytywania. Na szczęście jest i na to sposób! Wystarczy wrzucić wymagane skrypty do tablicy, a następnie zagnieżdżać obsługę zdarzenia [tt]load[/tt]. Szybki szkic rozwiązania:[/p]
[code=javascript]function addScripts( uris, callback ) {
	if ( !uris instanceof Array || uris.length < 1 ) {
		return false;
	}

	function add( i ) {
		var uri = uris[ i ],
			s = document.createElement( 'script' );

		s.src = uri;

		document.body.appendChild( s );

		if ( uris[ ++i ] ) {
			s.onload = function() {
				add( i );
			};
		} else if ( typeof callback === 'function' ) {
			s.onload = callback;
		}
	};

	add( 0 );
}[/code]
[p]Co robi ten kod? Otóż zamiast przyjmować adres skryptu, przyjmuje tablicę adresów. Oczywiście sprawdzamy, czy na pewno mamy tablicę i czy zawiera przynajmniej jeden element:[/p]
[code=javascript]if ( !uris instanceof Array || uris.length < 1 )[/code]
[p=info]Istnieje jeszcze kilka innych sposobów na sprawdzenie, czy zmienna jest tablicą (np. [tt]Array.isArray( uris )[/tt]), ale należy pamiętać, żeby nie robić [tt]typeof uris === 'array'[/tt], bo typ dla tablicy to [tt]object[/tt], nie [tt]array[/tt]![/p]
[p]Pojawia się także wewnętrzna funkcja [tt]add[/tt], która to właśnie wykonuje brudną robotę i dodaje skrypty. Jako parametr bierze indeks elementu, który ma wstawić, a następnie inicjuje wstawianie kolejnego elementu (funkcja rekurencyjna). Jeśli kolejnego elementu nie ma, do zdarzenia [tt]load[/tt] ostatniego skryptu jest dawany nasz callback. Prosty i skuteczny sposób na zapewnienie wczytywania skryptów zgodnie z podaną kolejnością.[/p]
[p]Przykład:[/p]
[code=markup]<!DOCTYPE html>
	<html lang="pl" dir="ltr">
		<head>
			<meta charset="UTF-8">
			<title>Ehhhh</title>
		</head>
		<body>
			<script>
			function addScripts( uris, callback ) {
				if ( !uris instanceof Array || uris.length < 1 ) {
					return false;
				}

				function add( i ) {
					var uri = uris[ i ],
						s = document.createElement( 'script' );

					s.src = uri;

					document.body.appendChild( s );

					if ( uris[ ++i ] ) {
						s.onload = function() {
							add( i );
						};
					} else if ( typeof callback === 'function' ) {
						s.onload = callback;
					}
				};

				add( 0 );
			}

			addScripts( [
				'https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js'
				,'http://comandeer.pl/js/zoom.js'
			], function() {
				console.log( 'Wczytano skrypt' );
			} );
			</script>
		</body>
	</html>[/code]

[h2="amd"]Sposób pro dla browserów[/h2]
[p]Ten problem postanowiono rozwiązać w sposób kulturalny i jakoś go ustandaryzować. Tak powstało [url=https://github.com/amdjs/amdjs-api/wiki/AMD]Asynchrounous Module Definition[/url], na które składają się [i]de facto[/i] dwie funkcje – [tt]define[/tt] i [tt]require[/tt].[/p]
[p][tt]define[/tt] służy do deklarowania modułów:[/p]
[code=javascript]define( 'opcjonalnanazwamodulu', [ 'tablica/modulow', 'lubinnychplikowjs', 'potrzebnychtemumodulowido', 'uruchomienia' ], function( $1, $2, $3, $4 ) { //poszczególne parametry to wczytane moduły z tablicy
	//tutaj kod modułu
	return obiektModulu; //każdy moduł powinien się "zwracać"
} );[/code]
[p][tt]require[/tt] natomiast wykonuje daną funkcję po wczytaniu koniecznych do tego modułów[/p]
[code=javascript]require( [ 'tablica/modulow', 'lubinnychplikowjs', 'potrzebnychdo', 'uruchomienia' ], function( $1, $2, $3, $4 ) {
	//tutaj operacje
} );[/code]
[p]Zwróć uwagę na parametry w obydwóch funkcjach. Znajdują się tam wczytane moduły, na których można operować. Dzięki temu kod staje się hermetyczny i nic nie wypływa do globalnego scope (zostaje w [tt]require[/tt]/[tt]define[/tt]). Dlatego ważne jest, żeby każdy moduł "zwracał się" przez [tt]return[/tt].[/p]
[p]Oczywiście nie wszystkie skrypty są zgodne z AMD (nie stosują [tt]define[/tt]), co nie przeszkadza w ich wczytywaniu przy wykorzystaniu tej techniki. jQuery jest ciekawym przykładem, który stoi pośrodku: dodaje się do globalnego scope, ale równocześnie zachowuje jako moduł AMD.[/p]
[p]Najpopularniejsza implementacja AMD to [url=http://requirejs.org]Require.js[/url], z którego osobiście korzystam.[/p]

[h2="serwery"]Jedyny pro sposób dla serwerów[/h2]
[p]Czyli jak to zrobić w node.js przy pomocy składni CommonJS (CJS):[/p]
[code=javascript]var modul = require( 'nazwamodulu' ),
	inny = require( 'lub/sciezka/do/pliku.js' );[/code]
[p]Tyle. Teoretycznie można zastosować pokazane powyżej AMD, ale to nie ma sensu.[/p]

[h2="umd"]Pro sposób dla wszystkich[/h2]
[p]Oczywiście składni CJS zaczęto używać także dla przeglądarek. Co więcej, coraz częściej mamy do czynienia z [url=http://nerds.airbnb.com/isomorphic-javascript-future-web-apps/]izomorficznymi aplikacjami internetowymi[/url], co wymusza znalezienie sposobu na współdzielenie tego samego kodu na serwerze i w przeglądarce. Tym samym powstało [url=https://github.com/umdjs/umd]UMD – Universal Module Definition[/url], które pozwala korzystać nam równocześnie z AMD, jak i CJS. Jest to obecnie najczęściej polecany sposób rozprowadzania kodu JS.[/p]

[h2="es6"]Przyszłość – ES Modules[/h2]
[p]Przyszłość przyniesie nam moduły natywnie wbudowane w ECMAScript. Niestety, ich składnia jest niekompatybilna zarówno z AMD, jak i CJS. Niemniej [url=https://github.com/systemjs/systemjs]istnieją już odpowiednie narzędzia[/url] zapewniające choć cień zgodności.[/p]
[p]Po wyczerpujący opis modułów ES6 odsyłam do [url=http://www.2ality.com/2014/09/es6-modules-final.html]artykułu na 2ality.com[/url].[/p]
[p=info]Jeśli chcesz dowiedzieć się praktycznie wszystkiego o systemach modułów w JS i różnicach między nimi, zajrzyj do [url=http://addyosmani.com/writing-modular-js/]wyczerpującego artykułu Addy'iego Osmaniego[/url].[/p]

[h2="cm"]Rebelia – Chainable Module Definition[/h2]
[p]Czyli przeniesienie łańcuszków z jQuery na poziom modułów. Jedyna implementacja to [url=http://labs.voronianski.com/melchior.js/]Melchior.js[/url]. Wygląda to nawet fajnie i składniowo jest ładniejsze od AMD (ale nie CJS!), ale jest całkowicie niekompatybilne. Tym samym raczej nie zyska dużej popularności i pozostanie ciekawostką (zwłaszcza, że za chwilę wejdą do użycia ES Modules).[/p]
