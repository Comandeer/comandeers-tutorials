<description>Kilka porad, aby Twój kod JS był jeszcze lepszy niż obecnie!</description>

<h1 id="start">Wypieść swój JS</h1>


<div class="alert alert-danger">

Ten tutorial jest już niestety dość przestarzały i opisuje starszą wersję standardu JS (ECMAScript 5) a także niektóre praktyki, których obecnie nawet ja nie uznaję już za najlepsze. Dlatego lepiej potraktuj go wyłącznie jako ciekawostkę historyczną… i poczekaj aż napiszę o JS coś równie sensownego.

</div>


<h2 id="parser">Inteligentny parser</h2>

JS to język, który pozwala chyba na największą dowolność w składni ze wszystkich języków programowania. Ba, jego parser jest tak sprawny, że sam sobie wstawia średniki w miejscach, w których być powinny.

```javascript
return
{};
```

Ten krótki kod – mimo że na pierwszy, a nawet drugi rzut oka wydaje się poprawny – rzuci nam ładny błąd na konsolę. Czemu? Bo parser widzi go tak:

```javascript
return; //bo niedbały programista zapomniał go tu dać
{}; //o, a co tu robi definicja obiektu?
```

Przez to małe głupstwo kiedyś zraziłem się do JSON i za wszelką cenę próbowałem go omijać. Dlatego na sam początek porad ot, taki mały kwiatek z własnego doświadczenia.


<h2 id="krotszy-zapis">Krótszy zapis</h2>

```javascript
var width = 0;
var height = 0;
var img = null;
var elem = null;
```

vs.

```javascript
var width = 0
,height = 0
,img = null
,elem = null;
```

IMO czytelniej. Gdyby ktoś pytał czemu przecinek jest przerzucony na początek nowej linii, a nie zostawiony na końcu poprzedniej: spróbuj pousuwać parę zmiennych z listy. Jeśli przecinek jest na końcu linijki, musisz usunąć interesującą Cię zmienną, a następnie przecinek. Tak usuwasz jedno i drugie za jednym zamachem i na pewno nie zostawisz przecinka przez nieuwagę.


<div class="alert alert-info">

Od kiedy ten tutorial powstał, jednak powróciłem do "normalnego" sposobu zapisu przecinków. Mój styl można podejrzeć [na moim GitHubie](https://github.com/Comandeer), a zwłaszcza [w projekcie BEMQuery](https://github.com/BEMQuery/bemquery-package-boilerplate).

</div>


<h2 id="strict">Strict mode</h2>

To małe cudeńko bardzo ułatwia życie, utrudniając je. Włączenie tzw. "strict mode" (tryb ścisły jak ktoś polski lubi) usuwa najbardziej bugowate części JS (np. `with` czy też ciut naprawia stringi w `setTimeout`). Co więcej, nie pozwala nam tworzyć nieświadomie zmiennych globalnych, np tak:

```javascript
for(i = 0; i<tab.length; i++)
```

W trybie ścisłym każda zmienna musi być zadeklarowana przed użyciem

```javascript
for(var i = 0; i < tab.length; i++)
```

A jak włączyć naszego małego przyjaciela? Prosto

```javascript
"use strict"; //na samym początku skryptu żeby działał wszędzie
function a()
{
	"use strict"; //lub w funkcji, aby działał tylko w niej
}
```

Od razu uprzedzam, że jeśli nigdy nie zwracałeś uwagi na jakość swojego JS, to po włączeniu strict mode skrypty Ci się wykrzaczą. Ale przystosowanie ich do strict mode wcale nie jest trudne, a w przyszłości na pewno przyniesie korzyści (bo np. ociupinkę zmieni się składnia JS).


<h2 id="literaly">Literały</h2>

Spójrzmy na ten kod:

```javascript
var a = new Array(1, 2, 3)
,b = new Object();

b.a = 1;
b.b = 2;

for(var i = 0; i<a.length; i++)
	console.log(a[i]);

for(var x in b)
	console.log(b[x]);
```

Wydaje się zupełnie poprawny, prawda? Owszem, może i jest poprawny, ale nie bezpieczny!

```javascript
Array = function() {return '';};
Object = Array;

var a = new Array(1,2,3)
,b = new Object();

b.a = 1;
b.b = 2;

for(var i = 0; i<a.length; i++)
	console.log(a[i]);

for(var x in b)
	console.log(b[x]);
```

I mamy krzak, nawet w strict mode! Bezpieczniej użyć literałów:

```javascript
Array = function() {return '';};
Object = Array;

var a = [1,2,3]
,b = {a:1, b:2};

for(var i = 0; i < a.length; i++)
	console.log(a[i]);

for(var x in b)
	console.log(b[x]);
```

Tych wykrzaczyć się nie da ;)


<h2 id="setTimeout">setTimeout</h2>

Nie przekazuj nazwy funkcji jako stringa!

```javascript
setTimeout("funkcja()", 1000); //don't do this!
```

Tym samym wywołujesz sobie `eval`, a jak każdy wie – `eval` jest [s]złe[/s] niepotrzebnie wykorzystywane, co jedynie obniża wydajność! Przekaż uchwyt do funkcji:

```javascript
setTimeout(funkcja, 1000);
```

A jak już musisz parametry przekazać:

```javascript
setTimeout(function(){funkcja(1, 2);}, 1000);
//lub
setTimeout(funkcja, 1000, 1, 2);
```


<h2 id="petle">Pętle i obiekty</h2>

Masz obiekt i musisz po nim poiterować? Zapewne robisz coś takiego:

```javascript
var o = {
	a: 1
	,b: 2
	,c: 3
};

for(var x in o)
{
	console.log(o[x]);
}
```

Zgadłem? No to źle robisz:

```javascript
Object.prototype.oops = 'BUGAHA!';

var o = {
	a: 1
	,b: 2
	,c: 3
};

for(var x in o)
{
	console.log(o[x]);
}
```

Powyższy kod wyświetli nam także 'BUGAHA!' (bo `for..in` iteruje także po wszystkich nienatywnych rozszerzeniach prototypu `Object`). Nie tego chcemy, prawda? A wystarczy dodać jedną linijkę:

```javascript
Object.prototype.oops = 'BUGAHA!';

var o = {
	a: 1
	,b: 2
	,c: 3
};

for(var x in o)
{
	if(o.hasOwnProperty(x))
		console.log(o[x]);
}
```

I już. Metoda `hasOwnProperty` sprawdza czy wartość podana jako x na pewno jest częścią naszego obiektu i czy nie pochodzi z prototypu.

Jest też inny sposób, aby zupełnie ominąć jakiekolwiek prototypy i nie martwić się o nie:

```javascript
Object.prototype.oops = 'BUGAHA!';

var o = Object.create(null);
o.a = 1;
o.b = 2;
o.c = 3;

for(var x in o)
{
	console.log(o[x]);
}
```

`Object.create` tworzy nam obiekt z prototypu podanego jako pierwszy parametr, tak więc tworzymy obiekt z pustym prototypem (domyślnie jest to `Object.prototype`). W starszych przeglądarkach ten sposób nie działa.

Jeszcze ładniej można to zrobić, korzystając z `Object.keys` (która to metoda nie szuka niczego w prototypach i zwraca wszystko w postaci normalnej tablicy kluczy):

```javascript
var o = {
	a: 1
	,b: 2
	,c: 3
};

Object.keys(o).forEach(function(x)
{
	console.log(o[x]);
});
```


<h2 id="namespaces">Funkcje natychmiastowego wywołania i przestrzenie nazw</h2>

Każdy doskonale wie, że zmienne globalne są bleeee. Jednak w wielu skryptach można znaleźć coś takiego:

```javascript
var width = 0;
var height = 0;
var img = null;
var elem = null;
//itp.
```

Tym sposobem brudzimy sobie globalny scope!

```javascript
console.log(window['width']);
```

A można lepiej, wykorzystując zasięg zmiennych:

```javascript
(function()
{
	var width = 0;
	var height = 0;
	var img = null;
	var elem = null;
}());
console.log(window['width']);
```

OK, a jeśli chcemy coś specjalnie umieścić w globalnym scope, np. funkcje naszego super-hiper API? Oczywiście głupim pomysłem jest ładowanie oddzielnie wszystkich 150+ funkcji, bo istnieje szansa, że coś naszego nadpisze funkcje już używane na stronie (np. funkcja o nazwie `resizeImg`). Wtedy możemy posłużyć się przestrzenią nazw:

```javascript

var API = {
	resizeImg: function()
	{
		console.log('wywołano');
	}
};
API.resizeImg();

```

Po połączeniu obydwu metod możemy osiągnąć coś takiego

```javascript
(function($)
{
	var API = {}
	,resizeImg = jakiswarunek ? function() {console.log('a');} : function() {console.log(b);};

	API.resizeImg = resizeImg;
	$.API = API;
}(window))
```

Voila! W globalnym scope mamy tylko to, co chcieliśmy mieć!


<h2 id="feature-detection">Feature detection</h2>
<blockquote>
Sniffing an user agent is like sniffing a glue
<footer><cite>porneL</cite></footer></blockquote>

Dlatego też, zamiast opierać się na wątpliwym przekonaniu, że w IE 5.5.1733958399 zainstalowanym pod Win XP z SP 14 na pewno to działa, warto sprawdzić czy naprawdę funkcja x istnieje i jest funkcją. Wyobraźmy sobie choćby, że chcemy stworzyć obiekt przy pomocy `Object.create`, ale nie jesteśmy pewni czy ta metoda istnieje:

```javascript
var o = Object.create(null);
```

W starszych IE wywali nam ładny ReferrenceError. A wystarczy sprawdzić czy ta metoda istnieje:

```javascript
if(typeof Object.create === 'function')
```

Jeśli nie, to można walnąć [polyfilla](https://developer.mozilla.org/en/JavaScript/Reference/Global_Objects/Object/create#Polyfill). Na tej samej zasadzie działa cała biblioteka [Modernizr](http://modernizr.com).


<h2 id="delegation">Event delegation</h2>

Zdarzenia bąbelkują (jak ktoś nie wierzy, to niech [poczyta](http://www.quirksmode.org/js/events_order.html)). Dlatego też możliwe staje się odkrycie, że jakiś tam akapit w jakimś tam divie został kliknięty.

```javascript
(function(d)
{
	d.getElementsByTagName('div')[0].addEventListener('click', function(e)
	{
		var t = e.target;
		if(t.tagName.toLowerCase() === 'p')
			console.log(t.innerHTML);
	}, false);
}(document));
```

Kiedy warto tego użyć? Jeśli np. mamy dużo przycisków na stronie i wszystkie są w jednym rodzicu. Zamiast przypisywać zdarzenia do każdego z nich, można przypisać te zdarzenia do ich rodzica i za pomocą `e.target` (w IE `e.srcElement`) sprawdzić, co tak naprawdę zostało kliknięte. Przydaje się także przy stronach ajaksowych, gdzie część elementów interaktywnych zostanie dodana po wczytaniu strony. Wtedy można doczepić zdarzenie np. do `body` i mieć pewność, że każdy przycisk będzie klikalny.
