[h1="start"]Semantyczny blog w HTML5[/h1]

[p=info]Ten tutorial przeznaczony jest dla tych, którzy już mają jakiekolwiek pojęcie o HTML. Dobrym miejscem na zdobycie podstaw wiedzy jest [url=http://kurshtml.edu.pl]Kurs HTML[/url] czy też książka Ferrante [url=http://ferrante.pl/books/html/]Moja pierwsza strona internetowa w HTML5 i CSS3[/url].[/p]
[p]Witam wszystkich! Przeszukałem kilka for webmasterskich i nie znalazłem ani jednego tutoriala na temat HTML5. Trza to naprawić![/p]
[p=info]Od razu uprzedzam, że słowa [q]semantyczny[/q] i [q]HTML5[/q] z tematu są rozdzielne i część porad można zastosować w starym dobrym HTML4. A na upartego słowa [q]blog[/q] w ogóle można się pozbyć.[/p]


[h2="punkt-wyjscia"]Punkt wyjścia[/h2]
[p]Dobra, do rzeczy. Wyobraźmy sobie, że mamy sobie [url=http://tutorials.comandeer.pl/res/html5-blog/start.html]przykładowy blog[/url]:[/p]
[code=markup]<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
	<html lang="pl" dir="ltr">
		<head>
			<meta http-equiv="Content-type" content="text/html;charset=UTF-8">
			<meta name="description" content="Super hiper wpis na temat czegokolwiek">
			<meta name="keywords" content="Bardzo ważne słowa kluczowe">
			<script type="text/javascript" src="http://bardzo-zajety-serwer.google.com/jquery.js"></script>
			<script type="text/javascript" src="http://mniej-zajety-serwer.blog.pl/scripty.js"></script>
			<link rel="alternate" type="application/rss+xml" title="Wpisy na RSS" href="http://example.net/feed">
			<link rel="index" title="Strona główna" href="http://example.net">
			<link rel="prev" title="Jakiś hiper poprzedni wpis" href="http://example.net/Jakis-hiper-poprzedni-wpis">
			<link rel="next" title="Jakiś super następny wpis" href="http://example.net/Jakis-super-nastepny-wpis">
			<link rel="canonical" href="http://example.net/Super-hiper-wazny-wpis">
			<link rel="pingback" href="http://example.net/xmlrpc.php">
			<link rel="stylesheet" type="text/css" href="http://example.net/css/style.css">
			<title>Super hiper ważny wpis | Example.net - fajowy blog, na którym bloguję</title>
		</head>
		<body>
			<div id="header">
				<h1><a href="http://example.net">Example.net - fajowy blog, na którym bloguję</a></h1>
				<p>Motto</p>
				<ul id="menu">
					<li><a href="whatever.html">Whatever</a></li>
					<li><a href="whereever.html">Wherever</a></li>
					<li><a href="whenever.html">Whenever</a></li>
				</ul>
				<form action="search.php" method="post">
				<p><input type="text" name="q"><button type="submit" name="submit" value="1">Szukaj</button></p>
				</form>
			</div>
			<div id="main">
				<div class="post" id="Super-hiper-wazny-wpis">
					<h2><a href="http://example.net/Super-hiper-wazny-wpis" rel="bookmark" title="Permalink do Super hiper ważny wpis">Super hiper ważny wpis</a></h2>
					<p class="post info">Opublikowano 07.01.2011 przez <a href="http://example.net/author">Comandeer</a></p>
					<img src="obrazek-do-artykulu.png" alt="Ważny obrazek">
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eu justo enim, ac faucibus massa. Vestibulum in elit aliquam purus sollicitudin adipiscing ac et sapien. Curabitur eleifend justo diam, et viverra nisi. Quisque a ipsum vehicula nunc vestibulum posuere. Suspendisse potenti. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vestibulum porttitor, neque eu congue fermentum, velit ante pellentesque arcu, a posuere risus tortor vel ante. Donec et neque at odio hendrerit mattis sed eu tellus. Nullam accumsan leo ut felis suscipit vehicula posuere erat eleifend. Donec semper lorem eu nibh tincidunt varius.</p>
					<p>Vivamus leo arcu, convallis id iaculis sit amet, fringilla et nunc. Donec aliquam, justo at mollis porta, enim lorem tempor eros, id iaculis arcu elit ac sem. In et erat eu metus ornare vestibulum non at arcu. Integer in nisi massa. Etiam nulla felis, rhoncus non pharetra sed, vehicula eu risus. Vestibulum sodales nunc nisi, vitae gravida nisl. Quisque lacus ipsum, commodo ac hendrerit vitae, porta dapibus tortor. Mauris sed risus diam. Morbi lacus elit, euismod dapibus interdum id, fermentum et mi. Nam at neque orci. Sed ac hendrerit augue. Vestibulum pharetra mattis mattis. Sed porta turpis dolor, condimentum blandit libero. Aliquam non nisi mi. Nulla nec sem elit. Duis blandit viverra lacus, in convallis mauris dictum et. Ut eget risus enim. Suspendisse potenti. Aenean leo odio, luctus quis eleifend quis, consectetur sit amet ipsum. Curabitur commodo leo ac risus dignissim at porttitor turpis fringilla.</p>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ullamcorper neque a magna sodales sodales. Nulla id enim sem, sit amet ultrices dolor. Vestibulum sollicitudin dolor quis quam vehicula egestas. Ut urna erat, gravida a tristique non, congue nec elit. Aenean tincidunt purus sed nisl semper sagittis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus in orci sit amet ligula posuere mollis a in diam. Nam enim tortor, ultrices quis laoreet nec, egestas non leo. Nam non fringilla turpis. Quisque vitae pellentesque nibh. Etiam dictum tincidunt ultricies. Cras sit amet aliquam odio. Morbi quis urna a nulla egestas placerat sed in lacus. Morbi id urna lacinia nunc bibendum ultricies. In pretium leo non odio feugiat porttitor. Donec aliquet purus in purus pretium aliquam. Etiam aliquet nibh ut nibh semper egestas. Cras in purus quam, nec posuere diam. Aliquam erat volutpat.</p>
					<p>Morbi porta blandit nisi at fermentum. Praesent vel sagittis urna. Pellentesque ipsum eros, vestibulum id gravida vitae, dictum vel sapien. Nam placerat lacus non lacus facilisis vitae hendrerit nibh adipiscing. Sed aliquet nisi ligula, eu viverra turpis. Curabitur tincidunt arcu in enim tempus sit amet auctor nunc luctus. Praesent dui turpis, lobortis in euismod quis, fringilla at felis. Nullam ligula purus, mattis nec tristique non, aliquam vitae sem. Quisque sit amet magna magna, eget aliquam orci. Aliquam placerat diam sit amet erat gravida fermentum. Maecenas malesuada nibh quis lorem pellentesque laoreet. Vestibulum pulvinar tincidunt fringilla. Nullam pellentesque felis ac nisi dictum egestas. Nunc metus mi, euismod non convallis nec, varius et felis. Pellentesque vel lacus turpis. In hac habitasse platea dictumst. Morbi sodales mauris a nisi feugiat pulvinar.</p>
					<p>Vivamus vitae lectus ut dui luctus iaculis. Pellentesque quis lectus id ipsum venenatis bibendum. Pellentesque non magna nec purus mollis suscipit. Nulla vestibulum interdum ante, vestibulum ullamcorper est vulputate vitae. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque aliquet mollis rhoncus. Phasellus imperdiet posuere bibendum. Quisque consequat imperdiet nibh vitae pretium. Suspendisse quis eros libero, non luctus mauris. Nulla laoreet nibh at eros scelerisque condimentum. Cras aliquam velit at orci luctus et tincidunt arcu scelerisque. Donec at quam magna. Integer leo leo, ultrices facilisis bibendum vel, feugiat interdum neque. Fusce vitae nibh sapien, sit amet consequat velit. Fusce adipiscing tortor id nibh fringilla sollicitudin. Donec sodales sapien in sapien rutrum rutrum. Nam quis enim nec nibh varius mattis nec in ante. Morbi non est eu diam elementum interdum. Morbi at odio non libero tempus eleifend nec quis ligula. Cras pellentesque mauris sit amet felis vestibulum tincidunt.</p>
				</div>
				<div class="tags">
					<h3>Tagi</h3>
					<ol>
						<li><a href="http://example.net/tag/Tag1">Tag1</a></li>
						<li><a href="http://example.net/tag/Tag2">Tag2</a></li>
					</ol>
				</div>
				<h3>Komentarze</h3>
				<ol class="comments">
					<li class="alt" id="comment-25">
						<small><a href="#comment-25" title="">30.12.08, 21:19</a> </small>
						<cite><a href="http://example.net/"><img alt="Avatar użytkownika Comandeer" src="http://avatary.gdziekolwiek.com/Comandeer" height="48" width="48">Comandeer</a></cite>
						<div><p>Ale komentarz!</p></div>
					</li>
				</ol>
				<h3>Dodaj komentarz</h3>
				<form action="http://example.net/comment.php" method="post" id="add_comment">
					<fieldset>
						<legend>Napisz komentarz</legend>
						<dl>
							<dt><label for="comment_author">Nick</label></dt>
								<dd><input type="text" name="author" id="comment_author" tabindex="1"></dd>
							<dt><label for="comment_email">E-mail</label></dt>
								<dd><input type="text" name="email" id="comment_email" tabindex="2"></dd>
							<dt><label for="comment_url">Strona</label></dt>
								<dd><input type="text" name="url" id="comment_url" tabindex="3"></dd>
							<dt><label for="comment_comment">Komentarz</label></dt>
								<dd><textarea name="comment" id="comment_comment" cols="48" rows="7" tabindex="5" ></textarea></dd>
							<dd><button name="submit" type="submit" id="comment_submit" tabindex="5">Wyślij</button></dd>
						</dl>
						<input type="hidden" name="comment_post_ID" value="88">
					</fieldset>
				</form>
			</div>
			<div id="aside">
				<div class="author">
					<h3>O autorze blogaska</h3>
					<p>Nazywam się Comandeer, mieszkam w uroczym miasteczku Świętochłowice i interesuję się webmasterką.</p>
				</div>
				<div class="tags cloud">
					<h3>Tagi</h3>
					<ul>
						<li><a href="http://example.net/tag/Tag1">Tag1</a></li>
						<li><a href="http://example.net/tag/Tag2">Tag2</a></li>
						<li><a href="http://example.net/tag/Tag3">Tag3</a></li>
						<li><a href="http://example.net/tag/Tag2">Tag4</a></li>
					</ul>
				</div>
				<div class="archive">
					<h3>Archiwum</h3>
					<ol>
						<li><a href="http://example.net/archiwum/2011/01">Styczeń 2011</a></li>
						<li><a href="http://example.net/archiwum/2010/12">Grudzień 2010</a></li>
					</ol>
				</div>
			</div>
			<div id="footer">Copyright &copy; 2011 by <a href="http://example.net/author">Comandeer</a></div>
		</body>
	</html>[/code]
[p]Nic nadzwyczajnego – blog jakich dużo w Internecie. Przyznam się bez bicia, że ten przykładzik to połączenie blogu [url=http://lea.verou.me]Lea Verou[/url] i naszego kochanego [url=http://roberto.ovh.org/blog]Roberto[/url]. Kodu nie będę wyjaśniał, bo mam wrażenie, że powinien być jasny. Ot, zwyczajny wpis na zwyczajnym blogu, poniżej komentarze, formularz do komentowania i jakieś tam dodatkowe info w bocznym panelu. Specjalnie nie dorzucam CSS, bo jestem z tych purystów, co to twierdzą, że strona to treść i kod, a wygląd jest jedynie dodatkiem.[/p]


[h2="nasz-cel"]Nasz cel[/h2]
[p]Chcemy być cool i porzucamy zgrzybiałego HTML4 na rzecz jego potomka! Poza tym spróbujemy nadać większe znaczenie naszej treści, przede wszystkim dla użytkownika, pamiętając, że co dobre dla użytkownika, jest także (najczęściej) dobre dla Google. Do tego celu wykorzystamy m.in. mikroformaty i nowe znaczniki z HTML5.[/p]


[h2="nowy-doctype"]Nowy [tt]DOCTYPE[/tt][/h2]
[p]Okey, to zaczynamy. Najpierw omówię przejście na HTML5, bo tego jest najwięcej, a później doszlifujemy resztę. Pierwsze, co należy zmienić, to ten cały rozwlekły [tt]DOCTYPE[/tt]. W HTML5 mamy króciutki i ładniutki:[/p]
[code=markup]<!DOCTYPE html>[/code]
[p]I już – po bólu. Twój blog właśnie stał się cool. Jeśli nie jesteś odważny, migrację na HTML5 możesz zakończyć w tym miejscu. Jeśli chcesz jednak poznać jaką zmianę w semantyce przynosi, pójdź za mną, a pokażę Ci piękno…[/p]


[h2="ustawienie-kodowania"]Ustawienie kodowania[/h2]
[p]Kolejnym wrogiem jest ustawienie kodowania. Po nowemu zapisać je można następująco:[/p]
[code=markup]<meta charset="utf-8">[/code]
[p]To króciutkie meta obsługuje nawet IE6. Zdziwieni? A powinni, bo ta składnia powstała z… błędu. Na wielu stronach bowiem można było znaleźć potworka typu[/p]
[code=markup]<meta http-equiv="Content-type" content="text/html;charset="UTF-8"">[/code]
[p]Przeglądarki stwierdziły bowiem, że nie ma sensu parsować nieprawidłowego znacznika i po prostu znalazły inny sposób: szukały czegoś na wzór [tt]charset=["]*[a-z0-9]["]*[/tt] (mam nadzieję, że to dobre wyrażenie regularne…). No i tak już zostało, a później to… [url=https://www.w3.org/TR/html5/infrastructure.html#extracting-character-encodings-from-meta-elements]ustandaryzowano w ramach HTML5[/url]. BTW ten znacznik i tak nie ma jakiegokolwiek sensu, bo kodowanie jest narzucane przez nagłówki HTTP. Można je kontrolować ręcznie, np. przez PHP:[/p]
[code=php]<?php header('Content-Type: text/html;charset=UTF-8'); ?>[/code]
[p]Warto także zwrócić uwagę, że w specyfikacji HTML5 napisano, że nazwa kodowania jest [q]case insensitive[/q], co oznacza, że wielkość znaków nie ma znaczenia i [tt]UTF-8[/tt] to to samo co [tt]utf-8[/tt] czy nawet [tt]UtF-8[/tt].[/p]


[h2="arkusz-stylow"]Dołączanie arkusza stylów i skryptów[/h2]
[p]Teraz słówko o arkuszu stylów: jeśli dołączamy go poprzez [tt]link[/tt], można usunąć zbędny atrybut [tt][type][/tt] – arkusze i tak zawsze są typu [tt]text/css[/tt].[/p]
[p]W przypadku skryptów sprawa jest nieco bardziej skomplikowana. Jeśli mówimy o "normalnym" skrypcie (np. dołączenie jQuery, slider), wówczas [tt][type][/tt] jest całkowicie zbędne – i tak jest to zawsze [tt][type=text/javascript][/tt]. W specyfikacji są podane jednak także inne sposoby wykorzystania [tt]script[/tt], m.in. jako [url=http://stackoverflow.com/questions/4912586/explanation-of-script-type-text-template-script]systemu szablonów[/url]. Ostatnio także [url=https://html.spec.whatwg.org/multipage/webappapis.html#module-script]dodano do specyfikacji [tt][type=module][/tt][/url], które pozwala [url=http://exploringjs.com/es6/ch_modules.html]wczytywać moduły ES[/url]. Niemniej na razie wsparcie jest słabe (żadne…).[/p]


[h2="obsluga-starszych-przegladarek"]Obsługa starszych przeglądarek[/h2]
[p]Niestety, z obsługą reszty znaczników nie jest już tak kolorowo i IE wymaga odpowiedniego skryptu, który trza dodać w [tt]head[/tt] (IE 9 na szczęście jest już normalny):[/p]
[code=markup]<!--[if lt IE 9]>
	<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]--> [/code]
[p]Po więcej informacji o tym skrypciku zapraszam na [url=http://remysharp.com/2009/01/07/html5-enabling-script/]blog Remy'iego Sharpa[/url] i [url=http://paulirish.com/2011/the-history-of-the-html5-shiv/]blog Paula Irisha[/url]. Jeśli natomiast w przyszłości wzbogacisz swój blog o jakieś nowinki z HTML 5 APIs (np. nagrywanie video komentarzy), to warto zapoznać się też z pojęciem feature detection (ang. wykrywanie funkcjonalności) i bibliotekami [url=http://modernizr.com]Modernizr[/url] czy [url=https://github.com/phiggins42/has.js/]has.js[/url]. Dodatkowo można też wykorzystać [url=https://polyfill.io/v2/docs/]usługę Polyfill.io[/url], która sama decyduje, jakie polyfille są potrzebne i je dołącza. Warto także poczytać o [url=http://responsivenews.co.uk/post/18948466399/cutting-the-mustard]technice [q]cut the mustard[/q][/url].[/p]
[p]Tutaj warto też od razu zwrócić uwagę na fakt, że nieznane przeglądarce elementy są nieostylowane w żaden sensowny sposób i przez to możemy dostać np. liniowe [tt]section[/tt], co raczej jest niezbyt pożądane. Na szczęście problem ten rozwiązuje normalizacja stylów (nawet jeśli nie chcesz używać nowych znaczników, to i tak [url=http://nicolasgallagher.com/about-normalize-css/]powinieneś normalizować[/url] lub [url=http://html5doctor.com/html-5-reset-stylesheet/]resetować[/url]), przypisując najbardziej podstawowe style odpowiednim elementom.[/p]
[p=info]Jeśli się zastanawiasz [q]a co z użytkownikami IE 9-, którym nie działa JS?[/q], odpowiem tak: jest ich na tyle mało, że nie sądzę, byś kiedykolwiek na nich trafił. Niemniej istnieją dwie alternatywy dla znaczników HTML5 (na chwilę obecną już bym ich nie polecał): [url=#aria-role]używanie [tt]div[role][/tt][/url] lub [url=http://2ndidea.com/en/html5-coding-without-html5shiv/](prawie) nieużywanie znaczników HTML5[/url]. Warto się także zastanowić, czy nie porzucić całkowicie HTML5 Shiva jeśli mamy pewność, że użytkownicy [i]naprawdę[/i] starych IE nam się nie trafią.[/p]
[p=info]Warto także wspomnieć o [url=http://www.quirksmode.org/css/condcom.html]komentarzach warunkowych dla IE[/url] – niemniej w IE 10 już nie działają, a prawdę mówiąc w dzisiejszym webdevie istnieją o wiele lepsze metody (jak wspomniane wyżej feature detection).[/p]


[h2="naglowek-i-nawigacja"]Nagłówek i nawigacja[/h2]
[p]Dobra, [tt]head[/tt] na razie zostawmy i przejdźmy do [tt]body[/tt]. Pierwsze, co rzuca nam się w oczy, to [tt]div#header[/tt]. Nic nie znaczy, prawda? Nawet [tt][id=header][/tt] tego nie ratuje, ponieważ identyfikatory nie mają żadnego znaczenia semantycznego (pogrubienie moje):[/p]
[quote="http://www.whatwg.org/specs/web-apps/current-work/multipage/elements.html#the-id-attribute"]Identifiers are [b]opaque strings[/b]. Particular meanings should not be derived from the value of the [tt]id[/tt] attribute[/quote]
[p]HTML5 rozwiązuje ten problem, wprowadzając znacznik [tt]header[/tt]. Jak sama nazwa wskazuje, służy on do oznaczania nagłówków i świetnie się nadaje do oznaczenia nagłówka strony. Zatem zamieńmy nasz [tt]div#header[/tt] na [tt]header#header[/tt]. Niby mała zmiana, a semantyka kodu rośnie. Ale, ale – to jeszcze nie wszystko! Spójrzmy na nagłówek: mamy tam [tt]h1[/tt] z tytułem strony i [tt]p[/tt] z mottem. Fajnie by było gdyby motto też było nagłówkiem, ale co z hierarchią nagłówków? Czy przypadkiem się nie zaburzy? Na chwilę obecną musisz wiedzieć, że podtytuły, zgodnie z tym, co [url=https://www.w3.org/TR/html51/common-idioms-without-dedicated-elements.html#subheadings-subtitles-alternative-titles-and-taglines]czytamy w specyfikacji[/url], winny być oznaczane przy pomocy [tt]p[/tt], tudzież [tt]h* > span[/tt]. Do samej hierarchii nagłówków [url=#http://tutorials.comandeer.pl/html5-blog.html#artykul-outline]jeszcze wrócimy[/url].[/p]
[p]Jeśli już zmieniamy wszystko, to pewnie pomyślicie, że menu też można zmienić. Oczywiście macie rację! W tym celu posłużymy się znacznikiem [tt]nav[/tt], który powstał specjalnie po to, aby oznaczać elementy nawigacyjne.[/p]
[p=warning]Co prawda w HTML5 istnieje także element [tt]menu[/tt], ale służy on tworzeniu menu dla aplikacji (menu kontekstowe czy toolbary) i nie należy go mylić z [tt]nav[/tt].[/p]
[p]W naszym nagłówku pozostał jeszcze formularz wyszukiwania, ale do niego wrócę później i omówię go razem z formularzem dodawania komentarzy. W chwili obecnej nasz nagłówek powinien wyglądać mniej więcej tak:[/p]
[code=markup]<header id="header">
	<h1><a href="http://example.net">Example.net - fajowy blog, na którym bloguję</a></h1>
	<p>Motto</p>
	<nav id="menu">
		<ul>
			<li><a href="whatever.html">Whatever</a></li>
			<li><a href="whereever.html">Wherever</a></li>
			<li><a href="whenever.html">Whenever</a></li>
		</ul>
	</nav>
	<form action="search.php" method="post">
		<p><input type="text" name="q"><button type="submit" name="submit" value="1">Szukaj</button></p>
	</form>
</header>[/code]


[h2="artykul"]Artykuł[/h2]

[h3="artykul-glowne-ramy"]Główne ramy[/h3]
[p]Oki doki, teraz czas na danie główne: treść artykułu! Zapewne zauważyliście, że jest opatulona w dodatkowy [tt]div#main[/tt]. Jak już wspomniałem, [tt]div[/tt]y nie mają jakiegoś specjalnego znaczenia semantycznego, dlatego w HTML5 powstało mnóstwo nowych znaczników, które mogą [tt]div[/tt]y zastąpić. Jednym z nich jest [tt]section[/tt], którym oznacza się pewne części dokumentu, które można wyróżnić ze względu na ich przeznaczenie. W tym wypadku użycie [tt]section[/tt] jest dozwolone, gdyż wyznacza obszar artykułu wraz ze wszystkimi "dodatkami" do niego (tj. tagi i komentarze) – całość tworzy pewną całość treściową. Właśnie do takich przypadków stworzono [tt]section[/tt]! Jednak to, że jest dozwolone, nie oznacza, że na pewno trzeba ten fragment oznaczyć. Za [url=http://html5doctor.com/the-section-element/]HTML5 Doctor[/url]:[/p]
[quote]But what would be the purpose of marking it [main content] up specifically, anyway? If you need to style it, use a div. An assistive technology like a screenreader can find the main content because it is the first thing inside a page that isn’t a header, nav or footer.[/quote]
[p]Niemniej potrzeba oznaczenia głównej treści strony stała się na tyle duża, że [url=https://www.w3.org/TR/html51/grouping-content.html#the-main-element]dodano do HTML5 nowy znacznik, służący wyłącznie temu – [tt]main[/tt][/url]. Warto dodać, że ten znacznik – ze względów dostępności – powinien znaleźć się na stronie [b]wyłącznie raz[/b], co powoduje [url=https://github.com/whatwg/html/issues/100]niekończący się spór między WHATWG i W3C[/url] (tutaj warto zwrócić uwagę na to, że [url=https://medium.com/content-uneditable/the-great-world-of-open-web-standards-64c1fe53063]istnieją dwa standardy HTML[/url] – w tym tutorialu będziemy się opierać głównie na wersji W3C jako tej, która w dogłębniejszy sposób zajmuje się problemami semantyki i dostępności).[/p]
[p]Dobra, teraz zatrzymujemy się na [tt]div.post[/tt] – to też można ulepszyć. W HTML5 pojawia się [tt]article[/tt], który służy do oznaczania… artykułów (nie wpadliście na to, co?), a dokładniej [q]semantycznej całości, która może być prezentowana samodzielnie[/q] (dość swobodna interpretacja specyfikacji). Wpis na blogu pasuje idealnie do tej definicji. No, na co czekasz – wyrzuć tego [tt]div[/tt]a![/p]
[p=info]W tym miejscu pozwolę sobie na małą dygresję. Przed chwilą oznaczyliśmy główną treść strony przy pomocy [tt]main[/tt]. Teraz oznaczamy artykuł przy pomocy [tt]article[/tt]. Jest to całkowicie poprawne, jednakże przy stronach, na których znajduje się tylko jeden artykuł (jak w naszym przypadku), można się zastanawiać, czy aż tak dokładny podział jest konieczny. Wówczas można pomyśleć nad rozwiązaniem typu [tt]article[role=main][/tt] ([url=#aria-role]o [tt][role][/tt] napisałem ciut niżej[/url]) lub po prostu pozostawieniu samego [tt]main[/tt].[/p]

[h3="artykul-naglowek"]Nagłówek[/h3]
[p]Znowu natykamy się na nagłówek, a tuż za nim na akapit z informacjami na temat daty i autora postu. Te rzeczy doskonale nadają się na nagłówek, prawda? No to otoczmy to [tt]header[/tt]! Nagłówki nie są tylko i wyłącznie dla całych stron – mogą je mieć także sekcje i artykuły. To ma sens, ponieważ praktycznie każdy wpis na blogu ma swój tytuł, swojego autora itd., które wcale nie muszą być zgodne z autorem i tytułem całej strony. Ale to jeszcze nie wszystko: daty też mają swój własny znacznik w HTML5! Nie, nie jest to [tt]date[/tt] wbrew pozorom, lecz [tt]time[/tt]. Wraz z nim pojawia się nowy atrybut: [tt][datetime][/tt], który przyjmuje [url=https://www.w3.org/TR/NOTE-datetime]datę w formacie ISO-8601[/url]. Ten znacznik doskonale pasuje do oznaczenia daty publikacji wpisu.[/p]

[h3="artykul-obrazki"]Obrazki[/h3]
[p]Dobra, później mamy obrazek. [q]No cóż, przynajmniej obrazka tykać nie będzie…[/q] – pomyślą ci, których przytłacza ogrom nowych możliwości. Niestety, obrazek też można ulepszyć! W tym wypadku posłużymy się znacznikiem [tt]figure[/tt]. Jego zadaniem jest oznaczanie danych multimedialnych, które są istotne dla danego artykułu (sekcji), lecz mogą także być prezentowane samodzielnie. Na chłopski rozum: masz ilustrację do swojego artykułu, użyj [tt]figure[/tt]![/p]
[p=info]Co rozumiem pod pojęciem "ilustracja"? Wystarczy wyobrazić sobie książkę, w której mamy obrazek (albo tabelkę, zdjęcie itp.), a pod nim podpis typu "Ryc. 1. Pusta szafa". Dzięki takiemu oznaczeniu można wyciągnąć tego typu obiekt poza pierwotny kontekst, a wciąż będzie mieć te same znaczenie (pusta szafa z podpisem to wciąż pusta szafa). Natomiast wszelkie ozdobniki graficzne, które są w artykule, żeby było ładnie, to po prostu ozdobniki. Ilustracja musi nieść ze sobą jakąś wartość semantyczną (łatwo to stwierdzić po tym, że da się wymyślić sensowny opis) i nie może zależeć od kontekstu swojego występowania (jeśli tekst traci sens po przesunięciu danego obiektu, to znak, że to nie jest kandydat na [tt]figure[/tt]).[/p]
[code=markup]<figure>
	<img src="http://example.net/images/obrazek-do-artykulu.png" alt="Ważny obrazek">
	<figcaption>Bardzo ważny obrazek[…],który jest bardzo ważny</figcaption>
</figure>[/code]
[p]W [tt]figcaption[/tt] można umieścić dokładny opis danego obiektu. Napisałem "obiektu", bo równie dobrze w [tt]figure[/tt] można umieścić filmik (np. poprzez HTML-owy [tt]video[/tt] – tak, też nowy znacznik) czy dźwięk ([tt]audio[/tt]).[/p]
[p=info]Mała dygresja: [tt][alt][/tt] jest potrzebny dla obrazka z powodów dostępności. Jednakże czasami… warto pozostawić go pustym, z tych samych powodów. O co chodzi? Otóż nie ma sensu powielać opisu obrazka, jeśli jest on zawarty w otaczającej go treści (np. jeśli w [tt]figcaption[/tt] jest dokładny opis tego, co na obrazku, należy zostawić [tt][alt][/tt] pusty; często zdarza się jednak, że w takim wypadku [tt][alt][/tt] opisuje co jest na obrazku, a [tt]figcaption[/tt] dodaje do tego interpretację/wyjaśnienie; np [tt][alt][/tt] – [q]czerwony ptak na gałęzi[/q], [tt]figcaption[/tt] – [q]Karłowata odmiana papugi[/q]). W takich wypadkach można użyć [tt][aria-labelledby][/tt]. W3C przygotowało [url=https://www.w3.org/TR/html51/semantics-embedded-content.html#alt-text]kilka wskazówek[/url] (zresztą [url=http://webaim.org/techniques/alttext/]nie tylko ono[/url]). Ciekawy jest także fakt, że [url=http://blog.paciellogroup.com/2014/04/short-note-alt/][tt][alt][/tt] to nie jedyny sposób na zapewnienie dostępności[/url].[/p]
[p]Jeśli chodzi o sam znacznik [tt]img[/tt]: jego również można ruszyć, a to za sprawą [url=https://html.spec.whatwg.org/multipage/embedded-content.html#embedded-content]tagu [tt]picture[/tt][/url]. Przykładzik, wprost ze specki:[/p]
[code=markup]<picture>
	<source media="(min-width: 45em)" srcset="large-1.jpg 1x, large-2.jpg 2x">
	<source media="(min-width: 18em)" srcset="med-1.jpg 1x, med-2.jpg 2x">
	<source srcset="small-1.jpg 1x, small-2.jpg 2x">
	<img src="small-1.jpg" alt="">
</picture>[/code]
[p]Ci, którzy bawili się [tt]video[/tt]/[tt]audio[/tt] na pewno znają znaczniki [tt]source[/tt]. Wskazują one [q]źródło elementu multimedialnego[/q] (w tym wypadku obrazka). Które [tt]source[/tt] ma wybrać przeglądarka? O tym decydują media queries, zawarte w atrybucie [tt][media][/tt]. Warto zauważyć także, że często podawane są dwa obrazki, dodatkowo oznaczone "1x" i "2x". Są to wersje przystosowane do gęstości pikseli ("1x" dla normalnych monitorów, "2x" dla Retiny). Pojawia się też [tt]img[/tt]. Zgodnie z najnowszą wersją [tt]picutre[/tt], [tt]img[/tt] jest jego główną składową – cała otoczka służy jedynie wyborowi odpowiedniego pliku grafiki, który jest następnie ładowany do rzeczonego [tt]img[/tt]. Proste i skuteczne, a zarazem dostarcza doskonałego fallbacku dla starszych przeglądarek.[/p]
[p]Jaki sens ma stosowanie [tt]picture[/tt]? Wyobraźmy sobie, że mamy zdjęcie prezydenta wygłaszającego orędzie do narodu. Owszem, można zastosować tricki w CSS, żeby obrazek nam się ładnie zeskalował na komórce, ale… No właśnie - będziemy mieli małe, rozmazane wiadomo co. Natomiast przy pomocy [tt]picture[/tt] komórkom i innym mniejszym ekranom możemy zaserwować odpowiednio mniejszy (zatem i lżejszy) obrazek ze zbliżeniem na twarz prezydenta. Nie dość, że iPhone będzie musiał mniej ściągnąć, to jeszcze dostanie zdjęcie przedstawiające to, co najważniejsze. Oczywiście działa to też w drugą stronę i super wypasionym ekranom panoramicznym o przekątnej 100 cali możemy wysłać zdjęcie prezydenta + całego słuchającego go tłumu.[/p]
[p]Warto zauważyć, że rozwojem technik związanych z responsywnością zajmuje się powołana [url=https://www.w3.org/community/respimg/]"grupa społeczna"[/url] (która jest teraz częścią [url=https://www.w3.org/community/wicg/]większej inicjatywy[/url]). To właśnie ona stoi za powstaniem tagu [tt]picture[/tt] oraz jego mniej inwazyjnych odpowiedników: [url=https://html.spec.whatwg.org/multipage/embedded-content.html#srcset-attributes]atrybutów [tt][srcset][/tt] i [tt][sizes][/tt] dla tagu [tt]img[/tt][/url]. Warto też nadmienić, że WHATWG odrzuciło początkowo propozycję znacznika [tt]picture[/tt], promując [tt][srcset][/tt]. Najlepiej wyjaśnia to Ian Hickson - [s]najbardziej wływowy człowiek w Sieci[/s] (współ)redaktor żyjącego standardu:[/p]
[quote="http://html5doctor.com/interview-with-ian-hickson-html-editor/"][…]let’s look at design. The way we usually approach ideas is that we describe the problem, then we come up with solutions to the problem and compare them, by evaluating them against the problem. This is where most concrete proposals run into a “no”; something else got the “yes” instead. [tt]<picture>[/tt] is an example of this: we described the problem (that took a few months of back and forth), and then once we had a problem description, I looked at the various proposals, and synthesised a solution based on those that addressed the problems adequately while trying to avoid some common design pitfalls based on lessons we’d learnt from previous ideas. So for example with [tt]<picture>[/tt], we learnt with [tt]<video>[/tt] and [tt]<source>[/tt] that having multiple elements for selecting a resource is a huge design pitfall, so when designing a solution to the problem here, I avoided that (hence the srcset="" design based on CSS’s image-set() proposal).[/quote]
[p]Osobiście w tym względzie nie zgadzam się z Ianem i raczej widziałbym znacznik [tt]picture[/tt] (+[tt][srcset][/tt]) niż "napakowany" [tt]img[/tt]. No, ale jak sam Hixie mówi:[/p]
[quote="http://html5doctor.com/interview-with-ian-hickson-html-editor/"]In reality, I can’t really say either “yes” or “no”. What I say doesn’t mean anything: I don’t write any browsers. The browser vendors say “no” to me all the time, by just not implementing what I’ve specced.[/quote]
[p]Rzeczywistość szybko zweryfikowała poglądy Hixiego i obecnie [url=https://html.spec.whatwg.org/multipage/embedded-content.html#the-picture-element][tt]picture[/tt] już jest w kanonicznym HTML[/url]. Tym samym w cień odeszło [url=http://tabatkins.github.io/specs/respimg]nowe rozwiązanie – [tt][src-n][/tt][/url], które łączy w sobie niejako [tt]picture[/tt] i [tt][srcset][/tt] w prostsze, bardziej zrozumiałe rozwiązanie. Coraz częściej próbuje się także zrzucić odpowiedzialność za rozwiązanie problemu [url=http://www.igvita.com/2013/08/29/automating-dpr-switching-with-client-hints/]na serwer[/url] (co IMO jest bardzo rozsądnym rozwiązaniem). Jednak najlepszym (ale też najbardziej długotrwałym) rozwiązaniem wydaje się po prostu [url=http://mobile.smashingmagazine.com/2013/09/24/responsive-image-container/]stworzenie nowego formatu obrazków[/url]. Zresztą nieważne tak naprawdę jak problem responsywnych obrazków zostanie rozwiązany – najważniejsze, że(by?) został rozwiązany.[/p]

[h3="artykul-outline"]Outline[/h3]
[p]Dobra, akapitów się (jeszcze) zmienić nie da, więc treść mamy z głowy. Przyjrzyjmy się zatem hierarchii nagłówków w HTML5. Jest to o tyle ważny temat, że hierarchia nagłówków odzwierciedla całą strukturę treści na stronie (stanowi jej spis treści) i dzięki temu [url=http://internet-bez-barier.com/elementy-naglowkowe-a-dostepnosc/]ułatwia nawigację dla osób korzystających z czytników ekranowych[/url].[/p]
[p]W HTML5 istniał ambitny plan odejścia od tradycyjnych znaczników [tt]h1[/tt]–[tt]h6[/tt] i przejścia na [url=https://www.w3.org/TR/html51/sections.html#creating-an-outline]hierarchię treści opartą na nowych znacznikach sekcjonujących[/url] ([tt]section, article[/tt] itd.). Niemniej [url=https://www.paciellogroup.com/blog/2013/10/html5-document-outline/]nikt tego nie zaimplementował[/url] i ostatecznie [url=https://lists.w3.org/Archives/Public/public-html/2016Apr/0032.html]postanowiono pozbyć się tej fikcji[/url]. Stąd jedynym poprawnym sposobem tworzenia hierarchii treści na stronie HTML5 jest połączenie obydwu metod (tagi sekcjonujące + różnicowanie ważności nagłówków), gdyż nowy algorytm zostanie usunięty ze specyfikacji i zastosowanie go spowoduje, że [url=http://en.wikipedia.org/wiki/Assistive_Technology]AT[/url] dostaną spłaszczoną hierarchię nagłówków (co raczej jest średnim pomysłem).[/p]
[p]Jeśli chcesz przetestować swój outline, wystarczy zaznaczyć odpowiednią opcję ([q]Show outline[/q]) w [url=http://validator.w3.org/nu]walidatorze[/url].[/p]
[p=info]Jako ciekawostkę można tutaj powiedzieć, że umiejętnie korzystając z atrybutu [tt][role=heading][/tt] i [tt][aria-level][/tt] można tworzyć hierarchię na samych [tt]h1[/tt], tak, jak zostało to opisane w specyfikacji. Metodę tę stosuje [url=https://github.com/ThePacielloGroup/html5-h]niestandardowy znacznik [tt]html5-h[/tt][/url] (przy pomocy [url=http://webroad.pl/javascript/3505-web-components]standardu Web Components[/url] i [url=https://www.polymer-project.org/1.0/]frameworka Polymer[/url], z którym [url=http://tutorials.comandeer.pl/polymer.html]miałem już do czynienia[/url]). Niemniej warto zauważyć, że to bardziej hack niźli eleganckie rozwiązanie problemu. Jednakowoż [tt][aria-level][/tt] można użyć w przypadku, gdy potrzebujemy więcej niż 6 poziomów zagłębień nagłówków (do "pogłębienia" [tt]h6[/tt] – bardzo edge'owy przypadek, ale warto o tym wiedzieć).[/p]

[h3="artykul-komentarze"]Komentarze[/h3]
[p]Okey, to jeszcze słówko na temat wyświetlania komentarzy: w HTML5 w końcu [url=http://html5doctor.com/cite-and-blockquote-reloaded/][tt]cite[/tt] działa tak, jak nakazuje logika[/url] i nie ogranicza sie już tylko i wyłącznie do oznaczania tytułów dzieł, ale także innego rodzaju źródeł, w tym osób. Co więcej, umieścić można każdy komentarz w [tt]article[/tt], dzięki czemu stworzylibyśmy swoistą hierarchię artykułów (tzn. każdy komentarz byłby "podartykułem" wpisu). Jest to logiczne, ponieważ każdy komentarz może być wyświetlany "samodzielnie" (wszak opinia o dziele A może istnieć odrębnie od tego dzieła). Przywodzi to na myśl stare, dobre gazety, w których odpowiedzią na konkretny artykuł jest… inny artykuł.[/p]
[p]Jeśli jednak już zgodzimy się na oznaczanie komentarzy przy pomocy artykułu, czekają nas kolejne wyzwania. Otóż regułą kciuka jest, by każdy artykuł miał odpowiedni nagłówek. Lecz jaki nagłówek powinien mieć komentarz? Wywiązała się [url=http://www.forumweb.pl/komentarze-kurshtml-edu-pl/html-html5/496603#496603]gorąca dyskusja na ten temat[/url], która skłoniła mnie do refleksji na temat kodu komentarzy. Na większości stron w Sieci, a także [url=http://www.w3.org/TR/html5/sections.html#article-example]w specyfikacji[/url], komentarze są traktowane jako wyjątek, który nie posiada nagłówka (bo są to artykuły zagnieżdżone). Niemniej na chwilę obecną uważam, że dodanie jako nagłówka nazwy użytkownika nie zaszkodzi – pozwoli to nam w łatwiejszy sposób śledzić komentarze danego użytkownika (np. naszego ulubionego hejtera!). Pomysł, by w nagłówku czy etykietce [tt][aria-label][/tt] dodawać pierwsze słowa komentarza ostatecznie odrzuciłem – z tego samego powodu, z jakiego niekiedy warto zostawić puste [tt][alt][/tt]: nie ma sensu dublować treści.[/p]
[p=info]Nie oznacza to jednak, że np. w RSS nie warto zamieścić tego typu opisu. W przypadku jednak strony internetowej jest to zbędne.[/p]
[p]Ostatecznie kod komentarzy wygląda tak:[/p]
[code=markup]<article id="comment-25">
	<header class="comment-meta">
		<a href="#comment-25"><time datetime="2011-01-07T20:41:06+00:00"">07.01.2011, 20:41</time></a>
		<h4><b><a href="http://example.net/"><img alt="" src="http://avatary.gdziekolwiek.com/Comandeer" height="48" width="48">Comandeer</a> skomentował</b></h4>
	</header>
	<p>Ale komentarz!</p>
</article>[/code]

[h3="artykul-naglowki-jako-punkty-nawigacyjne"]Nagłówki jako punkty nawigacyjne[/h3]
[p]Jedną z praktyk poprawiających użyteczność strony internetowej jest bez wątpienia możliwość łatwego nawigowania po jej zawartości. W przypadku tradycyjnych stron internetowych można to osiągnąć dzięki [url=http://www.kurshtml.edu.pl/html/do_etykiety,odsylacze.html]kotwicom[/url]. Najlepiej je przypiąć dla każdej sekcji lub nagłówka (jeśli nie mamy sekcji). Ma to bardzo proste uzasadnienie: sekcje/nagłówki dzielą stronę na sensowne części. Gdyby porównać stronę do książki, poszczególne nagłówki oznaczałyby rozdziały. Jeśli chcemy komuś powiedzieć, żeby przeczytał sobie o skorupiakach, podajemy mu nazwę konkretnego rozdziału a nie tytuł grubej encyklopedii, prawda? Tak samo jest w przypadku stron internetowych – zamiast podać odnośnik do całej strony, często o wiele lepiej jest podać odnośnik do konkretnego fragmentu. Stąd zachęcam do dodawania [tt][id][/tt] do każdej sekcji/nagłówka.[/p]
[p=warning]Choć cały kod strony najlepiej pisać w języku angielskim, [tt][id][/tt] służące do nawigacji są wyjątkiem i [b]powinny[/b] być w języku, w jakim jest napisana cała strona internetowa. Wystarczy sobie pomyśleć, który adres sprawia więcej sensu: [tt]strona.pl/artykul#section[/tt] czy jednak [tt]strona.pl/artykul#sekcja[/tt].[/p]
[p=info]Zawartość nawigacyjnego [tt][id][/tt] najlepiej stworzyć przez stworzenie [url=http://www.wpbeginner.com/glossary/post-slug/]sluga[/url] nagłówka, do którego chcemy odesłać czytelnika, np. "Moje piórka" dadzą nam [tt][id=moje-piorka][/tt].[/p]

[h3="artykul-calosc-zlozona-do-kupy"]Całość złożona do kupy[/h3]
[p]A oto szkielet naszej treści (spokojnie, na końcu podam całość):[/p]
[code=markup]<main>
	<article id="tytul">
		<header>
			<h1><a>Tytuł</a></h1>
			<p>Autor <time datetime="2011-01-07T20:40:06+00:00">07.01.2011</time></p>
		</header>
		<div>
		treść
		</div>
		<footer>
			<section>Tagi</section>
		</footer>
		<section>Komentarze
			<article></article>
			<form>Dodanie komentarza</form>
		</section>
	</article>
</main>[/code]
[p]Warto zauwązyć, że sama treść artykułu znajduje się po prostu w [tt]div[/tt]. Wiadomo, że jest to treść artykułu (jest w [tt]article[/tt] i nie jest ani w nagłówku, ani w stopce), dlatego co najwyżej można umieścić ją w [tt]div[/tt] w celu ułatwienia stylizacji. [tt]section[/tt] również tutaj nie pasuje, bo nie da się utworzyć żadnego sensownego nagłówka ("Treść artykułu" brzmi jak wymyślone na poczekaniu). Niemniej [tt]section[/tt] w artykule jak najbardziej pojawić się może, ale w przypadku gdy artykuł zawiera w sobie podtytuły (jak np. ten tutorial – nie, nie wzorujcie się na jego kodzie). Wówczas każdy podtytuł z odpowiadającą mu treścią może być traktowany jako osobna [tt]section[/tt]. Z kolei tagi można potraktować jako [tt]footer[/tt] (dodatkowe, poboczne informacje do artykułu) a komentarze – sekcję (mają sensowny tytuł i stanowią spójną całość). Oczywiście można też zrobić inaczej: zarówno tagi, jak i komentarze potraktować jako sekcje i włożyć je w [tt]footer[/tt]. Wypada jednak pamiętać, że definicja stopki sugeruje, że jest ona przeznaczona na zawarcie metadanych:[/p]
[quote="http://www.w3.org/TR/html5/sections.html#the-footer-element"]A footer typically contains information about its section such as who wrote it, links to related documents, copyright data, and the like.[/quote]
[p]Tagi w tym kontekście pasują o wiele bardziej (po prostu opisują dany artykuł jako słowa kluczowe), podczas gdy komentarze już niespecjalnie. Owszem, można je potraktować jako "powiązane dokumenty", jednak są one dośc autonomicznymi tworami i część z nich z powodzeniem mogłaby żyć bez łączności ze swoim "rodzicem". Stąd wydzielenie komentarzy do sekcji i pozostawienie w stopce samych tagów wydaje się bardziej sensownym rozwiązaniem.[/p]
[p]Tak to mniej więcej wygląda. Formularz se opuszczę i powrócę do niego później, bo formularze w HTML5 to bardzo ciekawy temat warty więcej niż szybkiego spojrzenia.[/p]


[h2="sidebar"]Sidebar[/h2]
[p]Przejdźmy do [tt]div#aside[/tt]. Tworzy on tzw. "boczny pasek" z informacjami luźno związanymi z  główną treścią (i tutaj mała dygresja: gdyby chodziło o luźno związane informacje z samym artykułem, mielibyśmy do czynienia z [tt]article > aside[/tt]; w tym wypadku chodzi o całą zawartość [tt]main[/tt]; inna sprawa, że tutaj faktycznie jest to jeden artykuł): autor, tagi, archiwa… Do oznaczania takich rzeczy powstał [tt]aside[/tt]. Oznacza się nim właśnie luźno związane z główną treścią rzeczy, które można zaprezentować samodzielnie (to chyba ulubione słówko w WHATWG).[/p]
[p]Idąc dalej, [tt]div[/tt]y z tagami, autorem i archiwami można potraktować jako artykuły. I choć początkowo taka interpretacja specyfikacji wydaje się ciutkę naciągana, to po dogłębniejszym wczytaniu okazuje się (chyba raczej na pewno) właściwa.[/p]
[quote="http://developers.whatwg.org/sections.html#the-article-element"]This could be a forum post, a magazine or newspaper article, a blog entry, a user-submitted comment, an interactive widget or gadget, or [b]any other independent item of content[/b].[/quote]
[p]Najważniejszy jest pogrubiony fragment. Ba, tylko co on znaczy? Idąc za [url=http://html5doctor.com/the-article-element/]radą doktorów[/url] trza pomyśleć czy dany fragment wyciągnięty z kontekstu wciąż ma jakiś sens. Notka o autorze, pozbawiona sąsiedztwa wpisu raczej nie stanie się bełkotem. Lista archiwalnych wpisów również pozostanie listą, tak jak lista tagów listą tagów. Dlatego moim skromnym zdaniem, chociaż na pierwszy rzut oka wydaje się to pewnym nadużyciem, [tt]article[/tt] pasują tutaj idealnie. Rozważania te wspiera opis [tt]article[/tt], który pojawił się w specyfikacji HTML 5.1, jeszcze bardziej zwracający uwagę na kwestię niezależności danego fragmentu treści:[/p]
[quote="https://www.w3.org/TR/html51/sections.html#the-article-element"]The [tt]article[/tt] element represents [b]a complete, or self-contained, composition[/b] in a document, page, application, or site.[/quote]
[p]Szkielet:[/p]
[code=markup]<aside>
	<article>
		<h3>O autorze</h3>
	</article>
	<article>
		<h3>Tagi</h3>
	</article>
	<article>
		<h3>Archiwum</h3>
	</article>
</aside>[/code]
[p][url=http://kacperkozak.pl]Kolega[/url] zwrócił mi uwagę, że tagi i archiwum można potraktować też w inny sposób. Nie da się ukryć, że są to [i]de facto[/i] dwie listy odnośników. Dlatego też można je potraktować jako dodatkowe elementy nawigacyjne (otoczyć [tt]nav[/tt]). Moim zdaniem obydwie interpretacje tych elementów są poprawne, a różnica wynika po prostu z innej perspektywy spojrzenia na sprawę. Moja interpretacja wynika z analizy samej natury treści (czy jest ona możliwa do zaprezentowania niezależnie, czy stanowi poboczną informację do głównej treści itd.), natomiast interpretacja kolegi – z analizy wzajemnych relacji i funkcji (czy ta lista odnośników może być potraktowana jako nawigacja, czy prowadzi do innej, powiązanej treści w obrębie witryny itd.). Gdyby ktoś był ciekawy, w specyfikacji HTML5 pojawia się zastosowanie [tt]aside > nav[/tt] właśnie w takim kontekście.[/p]
[p=info][tt]nav[/tt] nie służy tylko do oznaczania głównego menu strony. Jest znacznikiem do oznaczania elementów nawigacyjnych w ogóle. Jednak nie każda lista odnośników jest elementem nawigacyjnym. Zbiór odnośników do różnych artykułów w Internecie jest po prostu zbiorem odnośników (lub artykułem, w zależności od kontekstu). Natomiast już breadcrumbs czy też kotwice w obrębie jednej strony można potraktować jako element nawigacyjny.[/p]
[p=warning]Jeśli używamy na swojej stronie więcej niż jednego [tt]nav[/tt], powinniśmy zadbać o to, aby każde z nich miało [b]inną nazwę[/b] – najlepiej reprezentowaną przez nagłówek, w ostateczności atrybut [tt][aria-label][/tt]. Pozwoli to użytkownikom, zwłaszcza korzystającym z czytników ekranowych, na zrozumienie co dany element nawigacyjny im umożliwia (np. czy jest to menu strony, czy spis treści artykułu itd.). Niepisaną zasadą jest także ograniczenie liczby elementów [tt]nav[/tt] do 3–4.[/p]


[h2="stopka"]Stopka[/h2]
[p]No, to lwia część za nami – została tylko stopka. Tak, ją też zmieniamy. Tym razem div zamienia się w [tt]footer[/tt]. Uff, blog jest już w całości przerobiony na HTML5, ale to nie koniec – to dopiero początek :D[/p]
[p=info]P.S. dla ekstrawaganckich: [tt]html[/tt], [tt]head[/tt] i [tt]body[/tt] są opcjonalne ;) Jednak nie muszę chyba wspominać, że ich usunięcie może skutkować dziwnym drzewkiem DOM (szczególnie w IE).[/p]


[h2="formularze"]Formularze (WebForms 2.0)[/h2]

[h3="formularze-wyszukiwarka"]Wyszukiwarka[/h3]
[p]W HTML5 pojawia się pełno nowych typów pól i atrybutów formularzy. My zastosujemy raptem ułamek z nich.[/p]
[p]Zacznijmy od formularza wyszukiwania. Dla pól wyszukiwania jest przewidziany nowy typ – [tt][type=search][/tt]. Choć dzięki temu nasz kod staje się bardziej zrozumiały, to jednak z punktu widzenia użytkownika nie zmienia się absolutnie nic – to pole wciąż zachowuje się jak stare dobre pole tekstowe ([tt][type=text][/tt]).[/p]

[h3="formularze-nowe-typy-pol"]Nowe typy pól[/h3]
[p]Oczywiście [tt]search[/tt] to nie jedyny nowy typ pola. Z innych warto wspomnieć:[/p]
[list]
[*] [tt]email[/tt] – dla e-maili
[*] [tt]url[/tt] – dla URL-i
[*] [tt]number[/tt] – dla liczb
[*] [tt]date[/tt] – dla dat
[*] [tt]color[/tt] – dla kolorów
[*] [tt]range[/tt] – taki fajny slider
[/list]

[h3="formularze-inne-bajery-i-dostepnosc"]Inne bajery i dostępność[/h3]
[p]Ale, ale. Można jeszcze bardziej podbajerować dzięki atrybutowi [tt][placeholder][/tt]. Robi on to, co tysiące tych badziewnych JS: wyświetla pomocniczy tekst, który znika po kliknięciu w pole (i nie kasuje przy okazji już wprowadzonego zapytania…).[/p]
[p=warning][b]Nie powinien być jednak traktowany jako zastępstwo dla [tt]label[/tt][/b]. [url=https://www.w3.org/TR/html51/sec-forms.html#the-placeholder-attribute]Wspomina o tym nawet specyfikacja[/url].[/p]
[p]A jeśli już chcesz się nazywać mistrzem formularzy, to dodaj sobie jeszcze atrybut [tt][required][/tt], który oznacza, że formularz nie może zostać wysłany jeśli dane pole jest puste. Po przeróbce formularz szukania wygląda następująco:[/p]
[code=markup]<form action="search.php" method="post">
	<p>
		<label for="search-input">Szukaj:</label> 
		<input type="search" id="search-input" name="q" placeholder="Wpisz szukaną frazę…" required>
		<button type="submit" name="submit" value="1">Szukaj</button>
	</p>
</form>[/code]
[p][tt]label[/tt] do pola wyszukiwania można wstawić [url=http://adaptivethemes.com/using-css-clip-as-an-accessible-method-of-hiding-content/]techniką ukrywania przed graficznymi przeglądarkami[/url], używaną m.in. w [url=http://h5bp]HTML5 Boilerplate[/url]. Userzy z wizualnymi przeglądarkami nie zobaczą go (a pole wyszukiwania jest na tyle charakterystyczne, że na pewno je rozpoznają), natomiast ci, którzy korzystają z czytników ekranowych nie poczują się zagubieni, gdy natrafią na pole bez etykiety.[/p]
[p=warning][b]PAMIĘTAJ! CSS (jak i obrazki, JS, inne dziwne rzeczy typu Flash, Java, Silverlight) są tylko dodatkami, które nie muszą być dostępne![/b][/p]
[p]Oznacza to, że możesz być pewny tylko tego, że końcowy user zobaczy treść i HTML (patrz: użytkownicy Lynxa). Stąd ważne jest zrozumienie podstaw tworzenia czystego, semantycznego kodu, który – nawet bez CSS – tworzy sensowną i czytelną całość. Dlatego też osobiście wolę tworzyć najpierw HTML dla strony, a dopiero później dorabiać CSS i JS. HTML to kartka papieru, na którą nakładam kolejne warstwy folii (CSS, JS). Podejście to znane jest jako [url=http://webroad.pl/inne/3722-progressive-enhancement-zapomniany-fundament]Progressive Enhancement[/url].[/p]

[h3="formularze-kompatybilnosc"]Kompatybilność[/h3]
[p]Teraz zapewne się zapytasz: a gdzie nowe typy pól formularzy są obsługiwane? Zamiast podawać tak szybko deaktualizujące się informację, [url=http://caniuse.com/#feat=forms]odsyłam do odpowiedniego źródła[/url]. Brak wsparcia nie oznacza jednak, że trza rezygnować z nowoczesnych formularzy. HTML5 jest pisany z myślą o kompatybilności wstecznej, co znaczy, że jeśli dany typ pola nie jest obsługiwany, pojawi się stare, dobre pole tekstowe. Resztę zachowań – włącznie z walidacją wprowadzonych danych – we wszystkich przeglądarkach [url=http://www.thecssninja.com/javascript/h5f]można osiągnąć dzięki JS[/url].[/p]
[p]Podobnie można przerobić formularz dodawania komentarzy:[/p]
[code=markup]<form action="https://example.net/comment.php" method="post" id="dodaj-komentarz">
	<h3>Dodaj komentarz</h3>
	<p>
		<label for="comment-author">Nick</label>
		<input type="text" name="author" id="comment-author" required>
	</p>
	<p>
		<label for="comment-email">E-mail</label>
		<input type="email" name="email" id="comment-email" required>
	</p>
	<p>
		<label for="comment-url">Strona</label>
		<input type="url" name="url" id="comment-url">
	</p>
	<p>
		<label for="comment-comment">Komentarz</label>
		<textarea name="comment" id="comment-comment" cols="48" rows="7" required></textarea>
	</p>
	<p>
		<button name="submit" type="submit" id="comment-submit">Wyślij</button>
	</p>
	<input type="hidden" name="comment_post_ID" value="88">
</form>[/code]
[p]Tutaj warto wspomnieć o jeszcze jednym nowym atrybucie dla pól formularza: [tt][pattern][/tt], który przyjmuje jako wartość [url=http://www.regular-expressions.info/]wyrażenie regularne[/url], dzięki czemu – jeśli żadne z nowych typów pól formularza nie spełnia naszych wymagań – można wymusić kokretny format danych, np kodu pocztowego:[/p]
[code=markup]<input type="text" name="zipcode" pattern="\d{2}\-\d{3}">[/code]
[p]Naprawdę zachęcam do używania nowych typów formularzy. Jeśli wkrótce wszystkie przeglądarki będą je wspierać, można uprościć walidację danych po stronie serwera (a przynajmniej nie martwić się, że w e-mailu dostajemy JS-a).[/p]
[p=warning]Uprościć, [b]nie znaczy[/b] zaniechać. Niewalidowanie danych po stronie serwera jest jak wpuszczanie nieznajomego do domu, dając mu do tego klucz do sejfu w sypialni. Sama specyfikacja wspomina, że [url=https://www.w3.org/TR/html51/sec-forms.html#constraints-security]walidacja po stronie klienta ma jedynie podnosić UX[/url].[/p]


[h2="rel-czyli-dokad-to-prowadzi"][tt][rel][/tt] czyli dokąd to prowadzi[/h2]
[p]Atrybut [tt][rel][/tt] dla linków oznacza ich przeznaczenie, a dokładniej do jakiego zasobu się odnoszą. Warto stosować atrybut [tt][rel][/tt] na wszystkich linkach, które mają jakiekolwiek znaczenie semantyczne, np. jeśli link prowadzi do strony o autorze, niech będzie miał odpowiedni [tt][rel][/tt]. Jakie [tt][rel][/tt] można zatem stosować?[/p]

[h3="rel-lista-dozwolonych"]Lista dozwolonych [tt][rel][/tt][/h3]
[list]
[*] [tt]index[/tt] – strona główna
[*] [tt]author[/tt] – coś o autorze
[*] [tt]archive[/tt]/[tt]archives[/tt] – znany z Wordpressa, prowadzi do archiwum wiadomości. Typ ten niegdyś występował w specyfikacji HTML5, jednak obecnie nie jest nawet typem proponowanym przez Microformats wiki. Niemniej znajduje się w sekcji [url=http://microformats.org/wiki/existing-rel-values#POSH_usage]wykorzystywanych wartości[/url]. Osobiście wydaje mi się, że w końcu zostanie przeforsowany, dlatego zostawiam go w kodzie bloga (pomimo, że walidator się rzuca – ale na szczęście to [url=http://webroad.pl/html5-css3/3925-validate-or-not-to-validate-that-is-the-question]nie nieomylny demiurg[/url])
[*] [tt]prev[/tt] – poprzedni wpis
[*] [tt]next[/tt] – następny wpis
[*] [tt]canonical[/tt] – oryginalny URI do zasobu (czyli ten, który chcemy zaindeksować w Google)
[*] [tt]nofollow[/tt] – BlackSEO
[*] [tt]shortlink[/tt] – oficjalny, skrócony adres strony
[*] [tt]tag[/tt] – do oznaczania tagów
[/list]
[p=warning]Pamiętaj, że wszystkie [tt][rel][/tt] dotyczą aktualnej strony. Tym samym np. niepoprawne jest oznaczenie tagów w chmurce tagów przy pomocy [tt][rel=tag][/tt] (gdyż nie odnoszą się one do tej konkretnej strony). Natomiast oznaczenie tak tagów, które występują wewnątrz głównego artykułu (w nagłówku czy stopce) jest już poprawne (bo odnoszą się do treści danej strony).[/p]

[h3="rel-rozszerzalnosc"]Rozszerzalność[/h3]
[p]Poza tym można tworzyć własne [tt][rel][/tt], chociaż większego sensu w tym nie widzę, bo wszystkie potrzebne już istnieją i są na tyle elastyczne, że można je nagiąć do własnych potrzeb. Na szczęście radosne tworzenie jest monitorowane i żeby jakiś [tt][rel][/tt] został uznany za poprawny w HTML 5, należy [url=http://microformats.org/wiki/existing-rel-values]go zgłosić[/url]. To samo [url=http://wiki.whatwg.org/wiki/MetaExtensions]tyczyło się [tt]meta[name][/tt][/url], ale [url=https://github.com/whatwg/html/pull/2229]uznano ten wymóg za zbędny[/url].[/p]
[p]A teraz, drogi blogerze, linki czekają na semantyczne wsparcie! Naprzód![/p]


[h2="wai-aria"]WAI-ARIA[/h2]

[h3="aria-role"]Role[/h3]
[p]W HTML5 pojawia się nowy atrybut [tt][role][/tt], który określa rolę danego elementu na stronie. W przypadku bloga można je rozdzielić przykładowo tak:[/p]
[list]
[*] [tt]header[/tt] (strony) → [tt]banner[/tt] – ogólne informacje o stronie
[*] [tt]main[/tt] → [tt]main[/tt] – główna część strony
[*] [tt]article[/tt] → [tt]article[/tt] – artykuł, względnie [tt]document[/tt] – dokument
[*] [tt]article > header, article > footer[/tt] → [tt]group[/tt] (z tym, że nie wnosi to nic ciekawego tak naprawdę)
[*] [tt]aside[/tt] → [tt]complementary[/tt] – coś uzupełniającego
[*] wyszukiwarka → [tt]search[/tt] – nie trza tłumaczyć
[*] [tt]footer[/tt] strony → [tt]contentinfo[/tt] – metadane
[*] [tt]nav[/tt] → [tt]navigation[/tt] – element nawigacyjny
[/list]
[p]Warto także zauważyć, że dla większości elementów przeglądarki same nadają odpowiednie [tt][role][/tt] i dublowanie ich w kodzie [url=http://www.w3.org/TR/html5/dom.html#aria-usage-note]jest niezalecane[/url]. ARIA przydaje się wówczas, gdy tworzymy pewne struktury od podstaw np. w przypadku wykorzystywania Web Components czy podmienianiu natywnych pól formularza własnymi odpowiednikami.[/p]

[h3="aria-wut"]Ale po co to?[/h3]
[p]Dobra, [tt][role][/tt] jest jasne, ale co to WAI-ARIA? Otóż WAI to organizacja zajmująca się dostępnością stron internetowych, a ARIA to jej najnowszy standard. ARIA to skrót od Accessible Rich Internet Applications i, jak nazwa wskazuje, powstał po to, by podnieść dostępność tak zaawansowanych aplikacji jak Gmail czy Google Docs. Nic jednak nie szkodzi, aby nasz blog potraktować jak webappa.[/p]
[p=info]Dla tworzących bardziej rozbudowane strony, z wykorzystaniem JS, głównie XHR, mogę polecić jeszcze takie własności jak [tt][aria-live][/tt] i [tt][aria-atomic][/tt]. Przy ciężkim Ajaksie (czyt. wszystko na History API) wręcz ratują życie.[/p]
[p=warning]Przy walidacji formularzy również warto użyć ARIA, zwłaszcza dołączając obok atrybutu [tt][required][/tt] atrybut [tt][aria-required][/tt] oraz oznaczając niepoprawnie wypełnione pola [tt][aria-invalid][/tt].[/p]
[p]Po więcej info o WAI-ARIA zapraszam do [url=https://www.w3.org/TR/html-aria/]specyfikacji [i]ARIA in HTML[/i][/url]. Natomiast [url=https://www.smashingmagazine.com/inclusive-design-patterns/]o dostępności najlepiej pisze Heydon Pickering[/url]. Po polsku polecam [url=http://internet-bez-barier.com/]blog Internet bez barier[/url].[/p]


[h2="semantyka"]Dane semantyczne[/h2]

[h3="semantyka-mikroformaty"]Mikroformaty[/h3]
[p]Mikroformaty powstały po to, by w dobie HTML4 niesemantycznym divom nadać semantyczne znaczenie. Mimo że w HTML5 mamy pełno semantycznych znaczników, to jednak mikroformaty wciąż są niezwykle przydatne. Pozwalają nam dokładnie opisać wydarzenia, osoby czy miejsca używając do tego HTML-owego zapisu ogólnie znanych standardów, takich jak np. vcard (format wizytówek, obsługiwany przez większość telefonów komórkowych). Zastosowanie mikroformatów wcale nie jest trudne, wystarczy dodać odpowiednią klasę. Jako przykład zastosuję [url=http://microformats.org/wiki/h-card]hCard (odpowiednik vcard)[/url] i "oznaczę" boczne info o autorze:[/p]
[code=markup]<article class="h-card">
	<h3>O autorze blogaska</h3>
	<p>Nazywam się <a href="https://example.net/author" class="p-name u-url">Comandeer</a>, mieszkam w uroczym miasteczku <span class="p-locality">Świętochłowice</span> i interesuję się webmasterką.</p>
</article>[/code]
[p]Prawda, że łatwe? W podobny sposób można oznaczać wydarzenia ([url=http://microformats.org/wiki/h-event]h-event[/url]), przepisy ([url=http://microformats.org/wiki/h-recipe]h-recipe[/url]), a także upodobnić HTML do ATOM ([url=http://microformats.org/wiki/h-feed]h-feed[/url] + [url=http://microformats.org/wiki/h-entry]h-entry[/url]).[/p]

[h3="semantyka-microdata"]Microdata[/h3]
[p]Microdata (mikrodane) to z kolei nowość w HTML5, która działa podobnie do mikroformatów. Jedyna różnica polega na tym, że korzysta z nowych atrybutów – [tt][itemscope][/tt], [tt][itemtype][/tt] i [tt][itemprop][/tt] oraz z przestrzenii nazw. Najprościej pokazać to na przykładzie:[/p]
[code=markup]<article itemscope itemtype="http://schema.org/Person">
	<h3>O autorze blogaska</h3>
	<p>Nazywam się <a href="http://example.net/author" itemprop="name url">Comandeer</a>, mieszkam w uroczym miasteczku <span itemprop="address" itemscope itemtype="http://schema.org/PostalAddress"><span itemprop="addressLocality">Świętochłowice</span></span> i interesuję się webmasterką.</p>
</article>[/code]
[p]Wygląda i działa bardzo podobnie do mikroformatów (chociaż jest bardziej skomplikowane i – teoretycznie – pozwala odwzorowywać bardziej skomplikowane struktury danych). Co ważne, oba sposoby są znane Google'owi, który korzysta z nich do wyciągania danych ze stron. Korzystanie więc podnosi dostępność treści z poziomu wyszukiwarki.[/p]
[p=info]Google, Yahoo i Bing zaczęły pracować nad nowym standardem oznaczania treści [url=http://schema.org]Schema.org[/url], który ma ustandaryzować mikrodane na stronach WWW. Dzięki temu przedsięwzięciu można oznaczyć prawie każdy typ danych. Wydaje mi się, że takie podejście ma szansę wyprzeć mikroformaty, a przynajmniej [url=http://microformats.org/wiki/microformats-2]zmusić je do ewolucji[/url].[/p]

[h3="semantyka-inne"]Inne formaty danych semantycznych[/h3]
[p]Tutaj warto wspomnieć o głównym konkurencie microdata – [url=http://rdfa.info/]RDFa[/url] – który wygląda dość podobnie, ale jest bardziej XML-friendly. Chociaż obecnie zarówno on, jak i microdata/mikroformaty, są zagrożone przez najnowszy format danych semantycznych, [url=http://www.w3.org/TR/json-ld/]JSON LD[/url]. Niemniej ten format, z racji swojej specyfiki, IMO znajdzie zastosowanie głównie w RESTful APIs, jako format zwracanych danych.[/p]


[h2="semantyka-dublin-core"]Dublin Core[/h2]
[p]Dublin Core jest międzynarodowym standardem metadanych (ISO 15836-2003) i służy do opisywania dokumentów. Jest rozwijany i upowszechniany przez organizację Dublin Core Metadata Initiative, mającej na celu stworzenie semantycznej sieci, w której z łatwością można będzie znaleźć dokumenty (pieśń przyszłości). Standard ustala 15 elementów, dzięki którym można dokładniej opisać stronę, lecz nie tylko – praktycznie każdy dokument cyfrowy. Może dzięki temu stanowić zamiennik dla "standardowych" [tt]meta[/tt]. Najczęściej służy jako zamiennik dwóch metatagów: [tt]keywords[/tt] i [tt]description[/tt]. Ich "dublinowe" odpowiedniki to: [tt]dcterms.subject[/tt] i [tt]dcterms.description[/tt].[/p]
[code=markup]<meta name="dcterms.description" lang="pl" content="Super hiper wpis na temat czegokolwiek">
<meta name="dcterms.subject" lang="pl" content="Bardzo ważne słowa kluczowe; rozdzielone średnikiem">[/code]
[p=info]Chciałbym tutaj zwrócić uwagę, że warto także podać atrybut [tt][lang][/tt] wskazujący na język użyty w metadanych. W końcu to międzynarodowy standard i niekoniecznie opis dokumentu musi być po polsku.[/p]


[h2="dostepnosc"]Kilka uwag o dostępności[/h2]
[p]Pisząc ten poradnik, skupiałem się głównie na kwestiach semantyki. Skutkiem ubocznym tego jest automatyczne zwiększenie dostępności tak stworzonej strony WWW. Na chwilę obecną nasza strona powinna być już naprawdę dobrze dostosowana dla osób niepełnosprawnych (zwłaszcza po dodaniu kilku rzeczy z opisanego wyżej standardu WAI-ARIA), lecz kilka rzeczy można jeszcze poprawić.[/p]
[p]Na początku [tt]body[/tt] warto dodać link odsyłający nas bezpośrednio do [tt]main[/tt] danej strony (przy użyciu [url=#artykul-naglowki-jako-punkty-nawigacyjne]opisanych wyżej kotwic[/url]):[/p]
[code=markup]<a href="#tresc" class="focus-only" tabindex="1">Przejdź do treści</a>[/code]
[p]Zwiększy to użyteczność dla tych, którzy korzystają z przeglądarek głosowych lub mają zaburzenia psychomotoryczne i są zmuszeni używać jedynie klawiatury. Dla innych ukryjemy to w CSS robiąc np. tak:[/p]
[code=css].focus-only
{
	position:absolute;
	top:-1000px;
	left:-99999px;
}
.focus-only:focus
{
	position:static;
}[/code]
[p]Oczywiście link będzie czuły na TAB. Inna metoda (bardziej użyteczna i nie powodująca problemów z wydajnością na urządzeniach mobilnych) to [url=http://adaptivethemes.com/using-css-clip-as-an-accessible-method-of-hiding-content/]wykorzystanie [tt]clip[/tt][/url]. Stosuje ją m.in. [url=https://github.com/h5bp/html5-boilerplate/blob/4ded8b5ce09d2b665e5893945b29d8d626691086/dist/css/main.css#L135-L162]H5BP[/url][/p]
[code=css].focus-only
{
	border: 0;
    clip: rect(0 0 0 0);
    height: 1px;
    margin: -1px;
    overflow: hidden;
    padding: 0;
    position: absolute;
    width: 1px;
    white-space: nowrap;
}
.focus-only:focus
{
	clip: auto;
    height: auto;
    margin: 0;
    overflow: visible;
    position: static;
    width: auto;
    white-space: inherit;
}[/code]
[p]Warto także dodać, że niektóre przeglądarki co prawda przeskoczą do odpowiedniego elementu, ale zachowają starą kolejność TAB-owania elementów (czyli będzie TAB-ować menu, które chcieliśmy przeskoczyć) – dlatego [url=http://viget.com/inspire/skip-link-primer]dla kontenera z treścią warto dorzucić [tt][tabindex=-1][/tt][/url]. [/p]
[p]Przy okazji warto zauważyć, że bezpośrednia zabawa z atrybutami [tt][tabindex][/tt] czy [tt][accesskey][/tt] jest średnio przydatna. Narzucony z góry [tt][tabindex][/tt] może zrobić więcej szkody niż pożytku i w gruncie rzeczy powinien służyć wyłącznie do uczynienia focusowalnymi tych elementów, które natywnie nie są (czyli [i]de facto[/i] winien być używany tylko i wyłącznie w połączeniu z JS i ARIA). Tak samo wydaje mi się, że skróty klawiaturowe lepiej i wygodniej dla użytkownika zrobić jest w JS.[/p]
[p]Dla większości elementów sekcjonujących ([tt]section, article, nav, aside[/tt]) warto dodać nagłówki, które – dla piękna – ukryć można przed wizualnymi przeglądarkami podobną techniką, jak ta dla już wspominanego linku [tt].focus-only[/tt]. Oczywiście nie ma sensu na chamca wtryniać nagłówków dla każdej sekcji – czasami "Untitled section" jest dozwolone. Lepszy jest brak nagłówka niźli bezsensowny nagłówek. Inna rzecz, że jeśli coś nie ma nagłówka, to prawdopodobnie nie jest sekcją. Warto o tym pamiętać, bo nagłówki dla sekcji tworzą swoisty schemat nawigacyjny po stronie, który można wykorzystać do szybkiego przeskakiwania między częściami strony i identyfikowania ich. Tutaj warto jeszcze raz przypomnieć, że każda sekcja powinna mieć odpowiednie [tt][id][/tt] – w języku strony. Dzięki temu będzie można linkować do każdej sekcji, co znacząco zwiększa użyteczność strony. Podobna technika jest stosowana w przypadku tego tutorialu, gdzie można zauważyć najczęściej stosowany wzorzec dla tworzenia identyfikatorów: slug z treści nagłówka.[/p]
[p]Czasami zdarza się też, że musimy zapewnić jeszcze większy poziom dostępności. Tutaj na pomoc przychodzi nam [url=https://www.w3.org/TR/WCAG20/]standard WCAG 2.0[/url], dokładnie opisujący wszelkie aspekty dotyczące dostępności stron WWW. Jest on podzielony na 3 poziomy (A, AA i AAA), określające stopień dostępności (od minimum do sensownego maksimum). Standard ten opisuje [b]naprawdę wszystko[/b], co webmaster powinien wiedzieć o dostępności, stąd można go traktować jako swoistą biblię. Istnieje także [url=https://www.w3.org/WAI/WCAG20/quickref/]oficjalny katechizm[/url].[/p]
[p="warning"]WCAG powinien znać [b]KAŻDY[/b] szanujący się programista sieciowy. Zasady określone w tym standardzie nie są trudne w zastosowaniu (większość sprowadza się do poprawnego użycia HTML-a), a przynoszą spore korzyści w dziedzinie dostępności.[/p]
[p]Jeśli przestrzegasz zasad semantyki HTML i nie zapominasz o zasadzie Progressive Enhancement, wówczas prawdopodobnie nie będziesz musiał specjalnie przejmować się kwestiami dostępności strony. Wyjątkiem będą tu kwestie związane z kontrastem, gdyż je bardzo łatwo przeoczyć.[/p]


[h2="ostatnie-poprawki"]Ostatnie poprawki[/h2]
[p]To już prawie koniec! Co jeszcze warto zmienić?[/p]

[h3="ostatnie-poprawki-wydajnosc"]Wydajność i bezpieczeństwo[/h3]
[list]
	[*] Zacznijmy od tytułu strony: warto się upewnić, że jest w formacie [tt]<Nazwa podstrony> <separator> <Nazwa witryny>[/tt], np. [q]Projekty @ Comandeer's Homepage[/q]. Ma to duże znaczenie zarówno z punktu widzenia użyteczności (widać od razu, co dana karta przeglądarki zawiera), jak i dostępności (czytnik ekranowy przeczyta najpierw nazwę podstrony, a dopiero potem całą resztę).
	[*] Wszystkie [tt]script[/tt] (oprócz tego dla IE) warto przerzucić na koniec [tt]body[/tt] (zwiększy to szybkość ładowania strony, bo skrypty w [tt]head[/tt] mogą ją [url=http://developer.yahoo.com/performance/rules.html#js_bottom]"blokować"[/url]). Jeśli mamy bardzo dużo JS, ze złożonymi relacjami pomiędzy poszczególnymi plikami, warto rozważyć [url=https://github.com/umdjs/umd]architekturę modułową[/url]. Czy już wspominałem o [url=http://calendar.perfplanet.com/2016/prefer-defer-over-async/]atrybucie [tt][defer][/tt][/url]?
	[*] Można się w ogóle pokusić o serwowanie CSS, JS i obrazków z [url=http://en.wikipedia.org/wiki/Content_Delivery_Network]CDN[/url]. Jest to jedno z zaleceń Google odnośnie szybkości wczytywania stron: rozłożenie wczytywania na 2 paralelne domeny. Jedna serwuje dynamiczną stronę (czyli PHP i generujemy blogaska), a druga serwuje wszystko, co statyczne. Jednak rozłożenie wczytywania strony to tylko część zalet i bardziej rozbudowane CDN-y korzystają choćby z geolokalizacji, żeby zasysać zasoby z serwera jak najbliżej użytkownika, aby czas wczytywania był jeszcze krótszy. Istnieją także darmowe CDN-y, np. [url=http://www.coralcdn.org/]Coral CDN[/url]. Bardzo ważnym przeciwskazaniem dla CDN-ów jest fakt, że nie mamy nad nimi kontroli, co sprawia, że [i]de facto[/i] uzależniamy swoje bezpieczeństwo od bezpieczeństwa zewnętrznej usługi. Warto mieć to na uwadze.
	[*] Warto też stosować build process, podczas którego będziemy minifikować kod HTML, łączyć i minifikować pliki CSS i JS (być może nawet z przygotowywaniem paczek dla poszczególnych podstron) oraz kompresować obrazki (np. przy pomocy [url=https://imageoptim.com/]ImageOptim[/url]). Bardzo prymitywny przykład takiego rozwiązania można zobaczyć w [url=https://github.com/Comandeer/comandeers-homepage]repozytorium mojej strony domowej[/url].
	[*] Jak lubimy eksperymentować, to warto przejść całkowicie na HTTPS i [url=https://http2.github.io/]protokół HTTP/2[/url]. Zwiększy to zarówno bezpieczeństwo, jak i wydajność naszej strony.
	[*] Jak już jesteśmy przy HTTPS, to warto wspomnieć o [url=https://developer.mozilla.org/en-US/docs/Web/Security/HTTP_strict_transport_security]HSTS[/url] i [url=https://developer.mozilla.org/en/docs/Web/Security/Public_Key_Pinning]HPKP[/url].
	[*] Kontynuując ten temat, jest jeszcze [url=https://www.owasp.org/index.php/List_of_useful_HTTP_headers]kilka innych pomocnych nagłówków[/url], z czego najwięcej uwagi warto poświęcić [url=https://developer.mozilla.org/en-US/docs/Web/Security/CSP/Introducing_Content_Security_Policy][tt]Content-Security-Policy[/tt][/url], które w swojej najnowszej odsłonie [url=https://speakerdeck.com/mikispag/making-csp-great-again-michele-spagnuolo-and-lukas-weichselbaum]pozwoli nam zabezpieczyć się nawet przed dziurawymi CDN[/url].
[/list]

[h3="ostatnie-poprawki-integracja"]Integracja z zewnętrznymi usługami[/h3]
[list]
	[*] Warto dodać [url=http://html5doctor.com/web-manifest-specification/]web app manifest[/url], co pozwoli "uaplikacjowić" się naszemu blogowi. To doskonały wstęp do stworzenia z naszej strony [url=https://developers.google.com/web/fundamentals/getting-started/codelabs/your-first-pwapp/]pełnoprawnego Progressive Web Application[/url].
	[*] Oprócz RSS można dodać także ATOM, bo to o wiele lepszy format i lepiej się z nim pracuje.
	[*] Dla obrazków w treści artykułu warto stosować ścieżki bezwzględne (te z [tt]https://[/tt] na początku), bo treść może być udostępniana także przez RSS i ATOM i może pojawić się problem z odnalezieniem właściwego obrazka. Gdy to tylko możliwe, należy [url=https://twitter.com/paul_irish/status/588502455530311680]wymuszać HTTPS[/url]. Zapewnia to większe bezpieczeństwo, a w przyszłości umożliwi korzystanie z [url=https://http2.github.io/]HTTP/2[/url].
	[*] Jeśli masz profil na Google+, rozważ umieszczenie [tt]link[rel=author][/tt] (jako osoba prywatna) bądź też [tt]link[rel=publisher][/tt] (jako firma, organizacja, paracyrk…) z [tt][href][/tt] ustawionym na adres Twojego profilu. Co prawda [url=https://support.google.com/webmasters/answer/6083347?hl=pl]Twoje zdjęcie profilowe w wynikach wyszukiwania już się nie pojawi[/url], ale i tak warto taką informację dodać dla innych usług:
	[code=markup]<link rel="author" href="//plus.google.com/108791847143656151689/">[/code]
	[*] Jak już jesteśmy przy społecznościówkach, Facebook też serwuje [url=http://davidwalsh.name/facebook-meta-tags]swoje metatagi[/url] a Twtiter [url=https://dev.twitter.com/docs/cards]nie pozostaje mu dłużny[/url].
	[*] Warto też serwować ikonkę strony. Najlepiej mieć podstawową – [tt]favicon.ico[/tt] – w głównym folderze witryny. Wtedy, nawet jeśli nie zamieścimy [tt]link[rel=icon][/tt] w kodzie, przeglądarki sobie ją pobiorą (tak, przeglądarki po prostu na chama szukają ikonki, śląc requesty pod [tt]http://naszastrona.pl/favicon.ico[/tt]). Mając taką podstawową w zapasie, można próbować wcisnąć browserom np coś w PNG właśnie przy pomocy [tt]link[rel=icon][/tt]. IE < 9 i tak tego nie rozumie, uparcie szukając [tt]link[rel=shortcut][/tt], zatem ono dostanie ico a reszta ładny PNG (albo nawet animację w GIF). Do tego dochodzą jeszcze np. [url=http://mathiasbynens.be/notes/touch-icons]ikonki dotykowe dla iUrządzeń[/url] i inne takie, które też można (a jeśli strona ma być dla mobilnych też – nawet trzeba) zamieścić. Są od tego [url=http://realfavicongenerator.net/]odpowiednie narzędzia[/url]. Uwaga! Generowany kod to prawdziwa kobyła. Tak się to kończy, gdy [url=http://css-tricks.com/favicon-quiz/]nie istnieje jeden, powszechny standard[/url].
	[*] W nowszych Windowsach (7 i 8) można sobie [url=http://msdn.microsoft.com/en-us/library/ie/gg491732(v=vs.85).aspx]przypiąć stronę[/url] i odpalać ją jak zwykłą aplikację (oczywiście w IE). Podobna opcja [url=https://productforums.google.com/forum/#!topic/chrome/9jHS2dpJX5Q]jest dostępna w Chrome[/url].
	[*] Chrome na mobilnych urządzeniach pozwala również [url=https://developers.google.com/web/updates/2014/11/Support-for-theme-color-in-Chrome-39-for-Android?hl=en]zmienić kolor paska adresu[/url]:
	[code=markup]<meta name="theme-color" content="#db5945">[/code]
[/list]

[h3="ostatnie-poprawki-kompatybilnosc"]Kompatybilność[/h3]
[list]
	[*] Warto używać media-queries, aby strona sama się dostosowywała do urządzenia użytkownika (nurt responsive webdesign). Opłaca się, bo Google [url=https://www.google.com/webmasters/tools/mobile-friendly/]lubi strony mobile friendly[/url] (a mój telefon to popiera!).
	[*] Dla IE wypada słać [url=https://github.com/h5bp/html5-boilerplate/blob/b5d6e7b1613fca24d250fa8e5bc7bcc3dd6002ef/dist/doc/html.md#x-ua-compatible]nagłówek [tt]X-UA-Compatible[/tt][/url] ustawiony na [tt]IE=edge[/tt]. Wymusza to renderowanie strony przy pomocy najnowszych standardów w IE >= 8. Kiedyś można nyło słać ten nagłówek z wartością [tt]IE=edge; chrome=1[/tt], co wymuszało użycie [url=https://developers.google.com/chrome/chrome-frame/]Chrome Frame[/url]. Ten jednak już odszedł na emeryturę… Googlersi to jednak skrajni idealiści. Jeśli nie lubisz wciskać pluginów userowi, zawsze możesz [url=https://browser-update.org/pl/]naprawdę kulturalnie poinformować[/url].
	[*] Na końcu warto poświęcić chwilkę i przetestować stronę, poczynając od [url=http://validator.w3.org]Validatora[/url], przechodząc do [url=http://wave.webaim.org/]testu dostępności[/url] a na [url=http://developers.google.com/speed/pagespeed/insights/]teście szybkości kończąc[/url]. Sprawdzenie strony na kilku różnych urządzeniach lub [url=https://www.browserstack.com/]BrowserStack[/url]/[url=https://saucelabs.com/]Sauce Labs[/url] też jest dobrym pomysłem.
	[*] A już na naprawdę samym końcu [b]naprawdę zachęcam[/b], aby odpalić [url=http://www.freedomscientific.com/Products/Blindness/JAWS]JAWS-a[/url], [url=http://www.nvaccess.org/]NVDA[/url], [url=http://www.apple.com/accessibility/mac/vision/]VoiceOver[/url] lub jakiś inny czytnik ekranowy (chociaż bardziej bym ufał tej trójce, w kolejności wymieniania) i [i]posłuchać[/i] swojej strony. Bo może się okazać, że nie za bardzo jest czego słuchać…
[/list]
[p] Więcej grzechów nie pamiętam.[/p]


[h2="nasz-blog"]Nasz blog[/h2]
[p]Oto i [url=http://tutorials.comandeer.pl/res/html5-blog/final.html]pełny przerobiony kod z paroma dodatkami[/url]:[/p]
[code=markup]<!DOCTYPE html>
	<html lang="pl" dir="ltr" itemscope itemtype="http://schema.org/Blog">
		<head>
			<meta charset="UTF-8">

			<meta itemprop="url" content="https://example.net/Super-hiper-wazny-wpis">
			<meta name="description" content="Super hiper wpis na temat czegokolwiek">
			<meta name="dcterms.description" lang="pl" content="Super hiper wpis na temat czegokolwiek">
			<meta name="keywords" content="Bardzo ważne słowa kluczowe">
			<meta name="dcterms.subject" lang="pl" content="Bardzo ważne słowa kluczowe; rozdzielone średnikiem">
			<meta name="application-name" content="Super hiper blog">
			<meta name="msapplication-tooltip" content="Niesamowity blog o niesamowitych sprawach">
			<meta name="msapplication-starturl" content="http://example.net">
			<meta name="msapplication-window" content="width=1024;height=768">
			<meta property="og:site_name" content="Example.net - fajowy blog, na którym bloguję">
			<meta property="og:url" content="https://example.net">
			<meta property="og:title" content="Super hiper ważny wpis | Example.net - fajowy blog, na którym bloguję">
			<meta property="og:image" content="https://example.net/images/favicon.png">

			<link rel="author" href="https://plus.google.com/108791847143656151689/">
			<link rel="alternate" type="application/rss+xml" title="Wpisy na RSS" href="http://example.net/feed">
			<link rel="alternate" type="application/atom+xml" title="Wpisy na ATOM" href="http://example.net/atom">
			<link rel="index" title="Strona główna" href="https://example.net">
			<link rel="prev" title="Jakiś hiper poprzedni wpis" href="https://example.net/Jakis-hiper-poprzedni-wpis">
			<link rel="next" title="Jakiś super następny wpis" href="https://example.net/Jakis-super-nastepny-wpis">
			<link rel="canonical" href="https://example.net/Super-hiper-wazny-wpis">
			<link rel="pingback" href="https://example.net/xmlrpc.php">
			<link rel="icon" href="https://example.net/images/favicon.png" type="image/png">
			<link rel="apple-touch-icon" href="https://example.net/images/apple-touch-icon.png">
			<link rel="stylesheet" href="https://example.net/css/style.css">

			<title itemprop="name">Super hiper ważny wpis | Example.net - fajowy blog, na którym bloguję</title>

			<!--[if lt IE 9]>
				<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
			<![endif]-->
		</head>
		<body>
			<a href="#tresc" class="focus-only">Przejdź do treści</a>

			<header id="naglowek">
				<h1><a href="https://example.net" rel="index">Example.net - fajowy blog, na którym bloguję</a></h1>
				<p>Motto</p>
				<nav id="menu" itemscope itemtype="http://schema.org/SiteNavigationElement">
					<h2 class="visuallyhidden">Menu główne</h2>
					<ul>
						<li><a href="whatever.html">Whatever</a></li>
						<li><a href="wherever.html">Wherever</a></li>
						<li><a href="whenever.html">Whenever</a></li>
					</ul>
				</nav>
				<form action="search.php" method="post" role="search">
					<p><label class="visuallyhidden" for="search-input">Szukaj:</label> <input type="search" id="search-input" name="q" placeholder="Wpisz szukaną frazę…" required><button type="submit" name="submit" value="1">Szukaj</button></p>
				</form>
			</header>

			<main id="tresc" class="hfeed" itemprop="mainEntityOfPage" tabindex="-1">
				<article class="post h-entry" itemprop="blogPost" itemscope itemtype="http://schema.org/BlogPosting" id="super-hiper-wazny-wpis">
					<header>
						<h2 class="p-name" itemprop="headline"><a href="https://example.net/Super-hiper-wazny-wpis" class="bookmark u-uid u-url" rel="bookmark" title="Permalink do Super hiper ważny wpis">Super hiper ważny wpis</a></h2>
						<p class="post-info">Opublikowano <time datetime="2011-01-07T20:40:06+00:00" class="dt-published" itemprop="datePublished">07.01.2011</time> przez <a href="https://example.net/author" itemprop="author" itemscope itemtype="http://schema.org/Person" rel="author" class="author p-author h-card"><span itemprop="name">Comandeer</span></a></p>
					</header>
					<div class="e-content" itemprop="articleBody">
						<figure itemprop="image">
							<picture>
								<source media="(min-width: 45em)" srcset="large-1.jpg 1x, large-2.jpg 2x">
								<source media="(min-width: 18em)" srcset="med-1.jpg 1x, med-2.jpg 2x">
								<source srcset="small-1.jpg 1x, small-2.jpg 2x">
								<img src="small-1.jpg" alt="Kwadratowa ramka z czerwonym krzyżykiem w środku">
							</picture>
							<figcaption>Bardzo ważny obrazek[…],który jest bardzo ważny</figcaption>
						</figure>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eu justo enim, ac faucibus massa. Vestibulum in elit aliquam purus sollicitudin adipiscing ac et sapien. Curabitur eleifend justo diam, et viverra nisi. Quisque a ipsum vehicula nunc vestibulum posuere. Suspendisse potenti. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vestibulum porttitor, neque eu congue fermentum, velit ante pellentesque arcu, a posuere risus tortor vel ante. Donec et neque at odio hendrerit mattis sed eu tellus. Nullam accumsan leo ut felis suscipit vehicula posuere erat eleifend. Donec semper lorem eu nibh tincidunt varius.</p>
						<h3 id="podtytul">Podtytuł</h3>
						<p>Vivamus leo arcu, convallis id iaculis sit amet, fringilla et nunc. Donec aliquam, justo at mollis porta, enim lorem tempor eros, id iaculis arcu elit ac sem. In et erat eu metus ornare vestibulum non at arcu. Integer in nisi massa. Etiam nulla felis, rhoncus non pharetra sed, vehicula eu risus. Vestibulum sodales nunc nisi, vitae gravida nisl. Quisque lacus ipsum, commodo ac hendrerit vitae, porta dapibus tortor. Mauris sed risus diam. Morbi lacus elit, euismod dapibus interdum id, fermentum et mi. Nam at neque orci. Sed ac hendrerit augue. Vestibulum pharetra mattis mattis. Sed porta turpis dolor, condimentum blandit libero. Aliquam non nisi mi. Nulla nec sem elit. Duis blandit viverra lacus, in convallis mauris dictum et. Ut eget risus enim. Suspendisse potenti. Aenean leo odio, luctus quis eleifend quis, consectetur sit amet ipsum. Curabitur commodo leo ac risus dignissim at porttitor turpis fringilla.</p>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ullamcorper neque a magna sodales sodales. Nulla id enim sem, sit amet ultrices dolor. Vestibulum sollicitudin dolor quis quam vehicula egestas. Ut urna erat, gravida a tristique non, congue nec elit. Aenean tincidunt purus sed nisl semper sagittis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus in orci sit amet ligula posuere mollis a in diam. Nam enim tortor, ultrices quis laoreet nec, egestas non leo. Nam non fringilla turpis. Quisque vitae pellentesque nibh. Etiam dictum tincidunt ultricies. Cras sit amet aliquam odio. Morbi quis urna a nulla egestas placerat sed in lacus. Morbi id urna lacinia nunc bibendum ultricies. In pretium leo non odio feugiat porttitor. Donec aliquet purus in purus pretium aliquam. Etiam aliquet nibh ut nibh semper egestas. Cras in purus quam, nec posuere diam. Aliquam erat volutpat.</p>
						<p>Morbi porta blandit nisi at fermentum. Praesent vel sagittis urna. Pellentesque ipsum eros, vestibulum id gravida vitae, dictum vel sapien. Nam placerat lacus non lacus facilisis vitae hendrerit nibh adipiscing. Sed aliquet nisi ligula, eu viverra turpis. Curabitur tincidunt arcu in enim tempus sit amet auctor nunc luctus. Praesent dui turpis, lobortis in euismod quis, fringilla at felis. Nullam ligula purus, mattis nec tristique non, aliquam vitae sem. Quisque sit amet magna magna, eget aliquam orci. Aliquam placerat diam sit amet erat gravida fermentum. Maecenas malesuada nibh quis lorem pellentesque laoreet. Vestibulum pulvinar tincidunt fringilla. Nullam pellentesque felis ac nisi dictum egestas. Nunc metus mi, euismod non convallis nec, varius et felis. Pellentesque vel lacus turpis. In hac habitasse platea dictumst. Morbi sodales mauris a nisi feugiat pulvinar.</p>
						<p>Vivamus vitae lectus ut dui luctus iaculis. Pellentesque quis lectus id ipsum venenatis bibendum. Pellentesque non magna nec purus mollis suscipit. Nulla vestibulum interdum ante, vestibulum ullamcorper est vulputate vitae. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque aliquet mollis rhoncus. Phasellus imperdiet posuere bibendum. Quisque consequat imperdiet nibh vitae pretium. Suspendisse quis eros libero, non luctus mauris. Nulla laoreet nibh at eros scelerisque condimentum. Cras aliquam velit at orci luctus et tincidunt arcu scelerisque. Donec at quam magna. Integer leo leo, ultrices facilisis bibendum vel, feugiat interdum neque. Fusce vitae nibh sapien, sit amet consequat velit. Fusce adipiscing tortor id nibh fringilla sollicitudin. Donec sodales sapien in sapien rutrum rutrum. Nam quis enim nec nibh varius mattis nec in ante. Morbi non est eu diam elementum interdum. Morbi at odio non libero tempus eleifend nec quis ligula. Cras pellentesque mauris sit amet felis vestibulum tincidunt.</p>
					</div>
					<footer>
						<section id="tagi" class="tags" itemprop="articleSection">
							<h3>Tagi</h3>
								<ul>
									<li><a href="https://example.net/tag/Tag1" rel="tag" class="p-category">Tag1</a></li>
									<li><a href="https://example.net/tag/Tag2" rel="tag" class="p-category">Tag2</a></li>
								</ul>
						</section>
					</footer>

					<section id="komentarze" class="comments">
						<h3>Komentarze</h3>
							<article id="comment-25" itemprop="comment" itemscope itemtype="http://schema.org/Comment">
								<header class="comment-meta">
									<a href="#comment-25"><time datetime="2011-01-07T20:41:06+00:00" itemprop="dateCreated">07.01.2011, 20:41</time></a>
									<h4><b itemprop="author" itemscope itemtype="http://schema.org/Person"><a href="http://example.net/" itemprop="name url"><img alt="" src="http://avatary.gdziekolwiek.com/Comandeer" height="48" width="48" itemprop="image">Comandeer</a> skomentował</b></h4>
								</header>
									<p itemprop="text">Ale komentarz!</p>
							</article>
							<article id="comment-26" itemprop="comment" itemscope itemtype="http://schema.org/Comment">
								<header class="comment-meta">
									<a href="#comment-26"><time datetime="2017-01-08T20:08:30+01:00" itemprop="dateCreated">07.01.2017, 20:08</time></a>
									<h4><b itemprop="author" itemscope itemtype="http://schema.org/Person"><a href="http://example.net/" itemprop="name url"><img alt="" src="http://example.net/avatary/Anonim" height="48" width="48" itemprop="image">Anonim</a> skomentował</b></h4>
								</header>
									<p itemprop="text">Inny komentarz!</p>
							</article>

						<form action="https://example.net/comment.php" method="post" id="dodaj-komentarz">
							<h3>Dodaj komentarz</h3>
								<p>
									<label for="comment-author">Nick</label>
									<input type="text" name="author" id="comment-author" required aria-required="true">
								</p>
								<p>
									<label for="comment-email">E-mail</label>
									<input type="email" name="email" id="comment-email" required aria-required="true">
								</p>
								<p>
									<label for="comment-url">Strona</label>
									<input type="url" name="url" id="comment-url">
								</p>
								<p>
									<label for="comment-comment">Komentarz</label>
									<textarea name="comment" id="comment-comment" cols="48" rows="7" required aria-required="true"></textarea>
								</p>
								<p>
									<button name="submit" type="submit" id="comment-submit">Wyślij</button>
								</p>
								<input type="hidden" name="comment_post_ID" value="88">
						</form>
					</section>
				</article>
			</main>

			<aside id="aside">
				<h2>Dodatkowe informacje</h2>
				<article class="author h-card" itemscope itemtype="http://schema.org/Person">
					<h3>O autorze blogaska</h3>
					<p>Nazywam się <a href="https://example.net/author" class="fn p-name u-url" itemprop="name url">Comandeer</a>, mieszkam w uroczym miasteczku <span class="adr p-locality" itemprop="address" itemscope itemtype="http://schema.org/PostalAddress"><span itemprop="addressLocality">Świętochłowice</span></span> i interesuję się webmasterką.</p>
				</article>
				<article class="tags cloud">
					<h3>Tagi</h3>
					<ul>
						<li><a href="https://example.net/tag/Tag1">Tag1</a></li>
						<li><a href="https://example.net/tag/Tag2">Tag2</a></li>
						<li><a href="https://example.net/tag/Tag3">Tag3</a></li>
						<li><a href="https://example.net/tag/Tag2">Tag4</a></li>
					</ul>
				</article>
				<article class="archive">
					<h3>Archiwum</h3>
					<ol>
						<li><a href="https://example.net/archiwum/2011/01" rel="archives">Styczeń 2011</a></li>
						<li><a href="https://example.net/archiwum/2010/12" rel="archives">Grudzień 2010</a></li>
					</ol>
				</article>
			</aside>

			<footer id="stopka">Copyright &copy; 2016 by <a href="https://example.net/author" rel="author">Comandeer</a></footer>

			<script src="https://example.net/jquery.js"></script>
			<script src="https://example.net/scripty.js"></script>
		</body>
	</html>[/code]


[h2="przydatne"]Przydatne linki[/h2]

[h3="standardy"]Standardy i oficjalne materiały[/h3]
[list]
	[*] [url=http://www.whatwg.org/specs/web-apps/current-work/multipage/]HTML Living Standard[/url]
	[*] [url=http://www.w3.org/TR/html5]Specyfikacja HTML5[/url] (która jest oficjalną rekomendacją W3C od 28.10.2014!)
	[*] [url=http://www.w3.org/TR/html51]Specyfikacja HTML 5.1 (która jest kandydującą rekomendacją W3C od 21.06.2016)[/url]
	[*] [url=https://w3c.github.io/html/]Najnowsza specyfikacja HTML 5.x (na chwilę obecną – czyli 23.07.2016 – jest to wersja 5.2)[/url]
	[*] [url=http://developers.whatwg.org/]Specka dla developerów[/url] ;)
	[*] [url=https://www.w3.org/TR/WCAG20/]Specyfikacja WCAG 2.0[/url]
	[*] [url=https://www.w3.org/WAI/WCAG20/quickref/]Oficjalny poradnik WCAG 2.0[/url]
	[*] [url=https://www.w3.org/TR/wai-aria/]Specyfikacja WAI-ARIA[/url]
	[*] [url=http://www.w3.org/WAI/PF/aria-practices/]Oficjalny poradnik dla chcących bawić się WAI-ARIA[/url]
	[*] [url=http://microformats.org/wiki/Main_Page]Specyfikacje i oficjalne materiały o mikroformatach[/url]
	[*] [url=https://www.w3.org/TR/microdata/]Specyfikacja microdata[/url]
	[*] [url=http://dublincore.org/]Informacje o Dublin Core[/url]
	[*] [url=https://www.w3.org/TR/html51/semantics-embedded-content.html#alt-text]Oficjalna część specyfikacji HTML5, opsiująca użycie atrybutu [tt][alt][/tt][/url]
	[*] [url=http://usecases.responsiveimages.org]Oficjalna informacja o responsywnych obrazkach[/url]
	[*] [url=http://www.w3.org/TR/html51/semantics-embedded-content.html#the-picture-element]Definicja tagu [tt]picture[/tt] w HTML5.1[/url]
	[*] [url=https://tools.ietf.org/html/rfc7540]Specyfikacja HTTP/2[/url]
	[*] [url=https://www.w3.org/TR/CSP2/]Specyfikacja Content Security Policy[/url]
	[*] [url=https://www.w3.org/TR/NOTE-datetime]Opis standardu daty[/url]
[/list]

[h3="poradniki"]Poradniki[/h3]
[list]
	[*] [url=https://www.paciellogroup.com/blog/]Perfekcyjny przykład bloga w HTML5[/url]
	[*] [url=http://lea.verou.me]Dawny perfekcyjny przykład bloga w HTML5[/url]
	[*] [url=http://www.diveinto.org/html5/extensibility.html]Microdata[/url]
	[*] [url=http://html5doctor.com/microdata/]Doktorzy o microdata[/url]
	[*] [url=http://kurs.browsehappy.pl/HTML/DublinCore]DublinCore[/url]
	[*] [url=http://webaim.org/techniques/alttext/]Techniki dobierania odpowiedniego atrybutu [tt][alt][/tt][/url]
	[*] [url=http://www.alistapart.com/articles/waiaria]WAI-ARIA[/url]
	[*] [url=http://html5doctor.com/on-html-belts-and-aria-braces/]Krótka uwaga dla nadużywających ARIA[/url]
	[*] [url=http://html5doctor.com/the-time-element/]Trochę o tagu [tt]time[/tt][/url]
	[*] [url=http://html5doctor.com/avoiding-common-html5-mistakes/]Lista najczęstszych błędów[/url]
	[*] [url=http://html5doctor.com/downloads/h5d-sectioning-flowchart.pdf]Prosty schemat pomagający dobrać odpowiedni tag[/url]
	[*] [url=http://webroad.pl/inne/3722-progressive-enhancement-zapomniany-fundament]Progressive Enhancement[/url]
	[*] [url=http://webroad.pl/html5-css3/3925-validate-or-not-to-validate-that-is-the-question]Krótki artykuł o walidacji[/url]
[/list]

[h3="narzedzia"]Narzędzia[/h3]
[list]
	[*] [url=http://validator.w3.org/nu]Oficjalny walidator[/url] dla wersji standardu od W3C
	[*] [url=https://checker.html5.org]Oficjalny walidator[/url] dla wersji standardu od WHATWG
	[*] [url=http://wave.webaim.org/]Narzędzie do sprawdzania dostępności strony[/url]
	[*] [url=https://developers.google.com/speed/pagespeed/insights/]Narzędzie do mierzenia wydajności strony[/url]
	[*] [url=https://search.google.com/search-console/mobile-friendly]Tester przyjazności dla urządzeń mobilnych[/url]
	[*] [url=https://search.google.com/structured-data/testing-tool/]Narzędzie do testowania microdata/mikroformatów/RDFa[/url]
	[*] [url=http://caniuse.com]Prosty sposób na sprawdzenie wsparcia HTML5 w różnych przeglądarkach[/url]
	[*] [url=https://www.browserstack.com/]Testowanie strony w różnych przeglądarkach[/url]
	[*] [url=https://saucelabs.com/]Inne testowanie strony w różnych przeglądarkach[/url]
	[*] [url=http://html5test.com/]Test wsparcia dla HTML5[/url]
	[*] [url=https://csp-evaluator.withgoogle.com/]Walidator reguł CSP[/url]
	[*] [url=http://www.webbloatscore.com/]Miernik "otyłości" strony[/url] (radzę nie traktować za poważnie!)
	[*] [url=https://formlinter.com/]Prosty walidator formularzy[/url]
	[*] [url=https://www.gewoontoegankelijk.nl/en]Walidator dostępności strony[/url]
	[*] [url=http://www.freedomscientific.com/Products/Blindness/JAWS]Czytnik ekranowy JAWS[/url]
	[*] [url=http://www.nvaccess.org/]Czytnik ekranowy NVDA[/url]
	[*] [url=http://www.apple.com/accessibility/mac/vision/]Czytnik ekranowy VoiceOver[/url]
[/list]


[h2="changelog"]Poprawki i takie tam[/h2]
[spoiler="changelog"]
	[list]
		[*] [b]08.01.2017[/b] – przeredagowanie; dodanie informacji o [tt]script[type=module][/tt]; dodanie informacji o bibliotekach has.js i polyfill.io oraz teście [q]cut the mustard[/q]; dodanie informacji o alternatywach dla HTML5 shiv oraz komentarzach warunkowych; dodanie informacji o dwóch standardach HTML; usunięcie odwołań do opisu hierarchii nagłówków opartej na sekcjach; dodanie informacji o [tt][id][/tt] nagłówków/sekcji; dodanie informacji o dostępności [tt]nav[/tt]; zmiana kodu formularza; aktualizacja informacji o ARIA, [tt]meta[name][/tt] i mikroformatach; dodanie informacji o czytnikach ekranowych; dodanie informacji o wzorcowym formacie tytułu strony; dodanie linków do kilku narzędzi i czytników ekranowych
		[*] [b]21.11.2016[/b] – dodanie linków  do dwóch oficjalnych walidatorów
		[*] [b]24.10.2016[/b] – aktualizacja finalnego kodu
		[*] [b]23.07.2016[/b] – dodanie info o HTML 5.1 jako CR + dodanie linku do najnowszej wersji specki HTML 5.x; zmiana przykładu perfekcyjnego bloga
		[*] [b]28.05.2016[/b] – poprawienie linków do sekcji o [tt][alt][/tt] i [tt]picture[/tt] w specyfikacji HTML 5.1
		[*] [b]17.04.2016[/b] – dodanie informacji o aktualizacji algorytmu outline'u w specyfikacji HTML5
		[*] [b]09.04.2016[/b] – dodanie linku do algorytmu wyszukiwania deklaracji kodowania w `meta` oraz linku do opisu `X-UA-Compatible` w H5BP
		[*] [b]16.03.2016[/b] – dopisanie krótkiego wyjaśnienia w fragmencie o [tt]main[/tt] zachowującym się jak [tt]div[/tt]
		[*] [b]16.02.2016[/b] – poprawienie linków o [tt][alt][/tt]; odwrócenie changeloga; poprawienie notki o [tt]figure[/tt]
		[*] [b]03.02.2016[/b] – lekkie uszczegółowienie opisu [tt]figure[/tt]; przebudowa i aktualizacja sekcji "Ostatnie poprawki"; dopisanie kilku informacji o bezpieczeństwie; utworzenie sekcji o dostępności; przebudowa i aktualizacja sekcji z linkami; uaktualnienie stopki bloga
		[*] [b]11.12.2015[/b] – uaktualnienie obrazków z outlinem blogów; dodanie notki o możliwości testowania outline w walidatorze; dodanie linka do walidatora
		[*] [b]26.11.2015[/b] – mała poprawka we fragmencie o adresach zasobów na stronie
		[*] [b]31.07.2015[/b] – wyjęcie komentarzy poza stopkę artykułu
		[*] [b]04.06.2015[/b] – opisanie komentarzy, informacja o relative protocol, uzupełnienie informacji o [tt]figure[/tt], poprawienie wykorzystania [tt][rel=tag][/tt], notka przy [tt][rel][/tt] o ich połączeniu z konkretną stroną oraz uaktualnienie kodu bloga
		[*] [b]26.04.2015[/b] – podział tutorialu na mniejsze partie (zwłaszcza część poświęconą HTML5)
		[*] [b]23.04.2015[/b] – krótka notka na temat wystrzegania się niepotrzebnego stosowania ARIA; poprawiony kod bloga
		[*] [b]09.03.2015[/b] – ulepszenie skip linków, uaktualnienie informacji o atrybutach [tt][rel][/tt], poprawienie kodu [tt]picture[/tt] oraz krótki dopisek o formacie JSON LD
		[*] [b]19.11.2014[/b] – poprawienie zapisu atrybutów, dodanie linku do CanIUse.com i aktualizacja informacji o tagu [tt]picture[/tt]
		[*] [b]05.11.2014[/b] – kilka poprawek związanych głównie z ARIA
		[*] [b]18.08.2014[/b] – dodanie linku do artykułu o favicons
		[*] [b]04.08.2014[/b] – poprawnie kodu formularzu (wywalenie [tt][tabindex][/tt] i wyjęcie przycisku poza [tt]dl[/tt])
		[*] [b]13.07.2014[/b] – dodanie kilku informacji o ARIA, faviconach oraz przeredagowanie kilku fragmentów; rozróżnienie między [tt]nav[/tt] a [tt]menu[/tt]
		[*] [b]16.04.2014[/b] – uwaga początkowa + podlinkowanie książki Ferrante i Kursu HTML + uwagi o [tt][alt][/tt]; pewna zmiana w stosunku do [tt][tabindex][/tt] i [tt][accesskey][/tt]
		[*] [b]10.04.2014[/b] – dodanie kilku linków, aktualizacja fragmentu o [tt]picture[/tt], dodanie części o podstawowych stylach i porady o testowaniu strony
		[*] [b]21.11.2013[/b] – dodanie fragmentu o [tt][pattern][/tt] i kilka dodatkowych uwag na temat [tt]aside[/tt]
		[*] [b]20.11.2013[/b] – zmiana sposobu generowania tutorialu (kod powinien być czystszy), zmiana kodu artykułu (głównie [tt]section, footer[/tt]), wyjaśnienie wątpliwości z [tt]cite[/tt], aktualności związane z responsywnymi obrazkami oraz nagłówkami
		[*] [b]20.09.2013[/b] – dodałem nagłówki w kilku miejscach ostatecznego kodu bloga oraz usunąłem z niego [tt]hgroup[/tt]
		[*] [b]10.03.2013[/b] – oddanie sprawiedliwości tagowi [tt]main[/tt], dodanie kilku linków, troszkę poprawek
		[*] [b]10.01.2013[/b] – dodano kilka linków, dopisano kilka informacji (m.in. o OpenGraph wspomniano)
		[*] [b]06.01.2013[/b] – gryzło mnie sumienie o [tt]label[/tt] na wyszukiwarce. Toteż dopisałem, opisałem i przesadziłem ;) również dodałem/zmieniłem/poprawiłem kilka linków i doaktualizowałem pewne informacje. No i przekroczyłem limit znaków ;) kod HTML początkowy i końcowy walnięte na serwer :P
		[*] [b]29.12.2012[/b] – dopisek o elemencie [tt]main[/tt]
		[*] [b]28.11.2012[/b] – małe poprawki w kilku miejscach, dodanie kilku linków
		[*] [b]17.09.2012[/b] – pojawił się akapicik o responsive images, zmiany w linkach
		[*] [b]25.07.2012[/b] – kilka poprawek wymuszonych zmianami w specyfikacji i trochę więcej o Schema.org + kilka takich tam uwag o różnych elementach
		[*] [b]20.10.2011[/b] – poprawiłem kilka linków i literówek, lepiej sformatowałem tekst, uzupełniłem informację o mikrodanych, mała zmiana w markupie artykułu
		[*] [b]09.01.2011[/b] – pierwsza wersja
	[/list]
[/spoiler]
