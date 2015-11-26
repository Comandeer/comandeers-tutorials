[h1="start"]Wypieść swój JS[/h1]

[h2="parser"]Inteligentny parser[/h2]
[p]JS to język, który pozwala chyba na największą dowolność w składni ze wszystkich języków programowania. Ba, jego parser jest tak sprawny, że sam sobie wstawia średniki w miejscach, w których być powinny.[/p]
[code=javascript]return
{};[/code]
[p]Ten krótki kod - mimo, że na pierwszy, a nawet drugi rzut oka wydaje się poprawny - rzuci nam ładny błąd na konsolę. Czemu? Bo parser widzi go tak:[/p]
[code=javascript]return; //bo niedbały programista zapomniał go tu dać
{}; //o, a co tu robi definicja obiektu?[/code]
[p]Przez to małe głupstwo kiedyś zraziłem się do JSON i za wszelką cenę próbowałem go omijać ;) Dlatego na sam początek porad ot, taki mały kwiatek z własnego doświadczenia :D[/p]

[h2="krotszy-zapis"]Krótszy zapis[/h2]
[code=javascript]var width = 0;
var height = 0;
var img = null;
var elem = null;[/code]
[p]vs.[/p]
[code=javascript]var width = 0
,height = 0
,img = null
,elem = null;[/code]
[p]IMO czytelniej. Gdyby ktoś pytał czemu przecinek jest przerzucony na początek nowej linii, a nie zostawiony na końcu poprzedniej: spróbuj pousuwać parę zmiennych z listy ;) jeśli przecinek jest na końcu linijki, musisz usunąć interesującą cię zmienną, a następnie przecinek. Tak usuwasz jedno i drugie za jednym zamachem i na pewno nie zostawisz przecinka przez nieuwagę.[/p]

[h2="strict"]Strict mode[/h2]
[p]To małe cudeńko bardzo ułatwia życie, utrudniając je. Włączenie tzw. "strict mode" (tryb ścisły jak ktoś polski lubi) usuwa najbardziej bugowate części JS (np. [tt]with[/tt] czy też ciut naprawia stringi w [tt]setTimeout[/tt]). Co więcej, nie pozwala nam tworzyć nieświadomie zmiennych globalnych, np tak:[/p]
[code=javascript]for(i = 0; i<tab.length; i++)[/code]
[p]W trybie ścisłym każda zmienna musi być zadeklarowana przed użyciem[/p]
[code=javascript]for(var i = 0; i < tab.length; i++)[/code]
[p]A jak włączyć naszego małego przyjaciela? Prosto[/p]
[code=javascript]"use strict"; //na samym początku skryptu żeby działał wszędzie
function a()
{
	"use strict"; //lub w funkcji, aby działał tylko w niej
}[/code]
[p]Od razu uprzedzam, że jeśli nigdy nie zwracałeś uwagi na jakość swojego JS, to po włączeniu strict mode skrypty ci się wykrzaczą ;) Ale przystosowanie ich do strict mode wcale nie jest trudne, a w przyszłości na pewno przyniesie korzyści (bo np. ociupinkę zmieni się składnia JS).[/p]

[h2="literaly"]Literały[/h2]
[p]Spójrzmy na ten kod:[/p]
[code=javascript]var a = new Array(1, 2, 3)
,b = new Object();

b.a = 1;
b.b = 2;

for(var i = 0; i<a.length; i++)
	console.log(a[i]);

for(var x in b)
	console.log(b[x]);[/code]
[p]Wydaje się zupełnie poprawny, prawda? Owszem, może i jest poprawny, ale nie bezpieczny![/p]
[code=javascript]Array = function() {return '';};
Object = Array;

var a = new Array(1,2,3)
,b = new Object();

b.a = 1;
b.b = 2;

for(var i = 0; i<a.length; i++)
	console.log(a[i]);

for(var x in b)
	console.log(b[x]);[/code]
[p]I mamy krzak, nawet w strict mode! Bezpieczniej użyć literałów:[/p]
[code=javascript]Array = function() {return '';};
Object = Array;

var a = [1,2,3]
,b = {a:1, b:2};

for(var i = 0; i < a.length; i++)
	console.log(a[i]);

for(var x in b)
	console.log(b[x]);[/code]
[p]Tych wykrzaczyć się nie da ;)[/p]

[h2="setTimeout"]setTimeout[/h2]
[p]Nie przekazuj nazwy funkcji jako stringa![/p]
[code=javascript]setTimeout("funkcja()", 1000); //don't do this![/code]
[p]Tym samym wywołujesz sobie [tt]eval[/tt], a jak każdy wie - [tt]eval[/tt] jest [s]złe[/s] niepotrzebnie wykorzystywane, co jedynie obniża wydajność! Przekaż uchwyt do funkcji:[/p]
[code=javascript]setTimeout(funkcja, 1000);[/code]
[p]A jak już musisz parametry przekazać:[/p]
[code=javascript]setTimeout(function(){funkcja(1, 2);}, 1000);
//lub
setTimeout(funkcja, 1000, 1, 2);[/code]

[h2="petle"]Pętle i obiekty[/h2]
[p]Masz obiekt i musisz po nim poiterować? Zapewne robisz coś takiego:[/p]
[code=javascript]var o = {
	a: 1
	,b: 2
	,c: 3
};

for(var x in o)
{
	console.log(o[x]);
}[/code]
[p]Zgadłem? No to źle robisz:[/p]
[code=javascript]Object.prototype.oops = 'BUGAHA!';

var o = {
	a: 1
	,b: 2
	,c: 3
};

for(var x in o)
{
	console.log(o[x]);
}[/code]
[p]Powyższy kod wyświetli nam także 'BUGAHA!' (bo [tt]for..in[/tt] iteruje także po wszystkich nienatywnych rozszerzeniach prototypu [tt]Object[/tt]). Nie tego chcemy, prawda? A wystarczy dodać jedną linijkę:[/p]
[code=javascript]Object.prototype.oops = 'BUGAHA!';

var o = {
	a: 1
	,b: 2
	,c: 3
};

for(var x in o)
{
	if(o.hasOwnProperty(x))
		console.log(o[x]);
}[/code]
[p]I już. Metoda [tt]hasOwnProperty[/tt] sprawdza czy wartość podana jako x na pewno jest częścią naszego obiektu i czy nie pochodzi z prototypu.[/p]
[p]Jest też inny sposób, aby zupełnie ominąć jakiekolwiek prototypy i nie martwić się o nie:[/p]
[code=javascript]Object.prototype.oops = 'BUGAHA!';

var o = Object.create(null);
o.a = 1;
o.b = 2;
o.c = 3;

for(var x in o)
{				
	console.log(o[x]);
}[/code]
[p][tt]Object.create[/tt] tworzy nam obiekt z prototypu podanego jako pierwszy parametr, tak więc tworzymy obiekt z pustym prototypem (domyślnie jest to [tt]Object.prototype[/tt]). W starszych przeglądarkach ten sposób nie działa.[/p]
[p]Jeszcze ładniej można to zrobić, korzystając z [tt]Object.keys[/tt] (która to metoda nie szuka niczego w prototypach i zwraca wszystko w postaci normalnej tablicy kluczy):[/p]
[code=javascript]var o = {
	a: 1
	,b: 2
	,c: 3
};

Object.keys(o).forEach(function(x)
{
	console.log(o[x]);
});[/code]

[h2="namespaces"]Funkcje natychmiastowego wywołania i przestrzenie nazw[/h2]
[p]Każdy doskonale wie, że zmienne globalne są bleeee. Jednak w wielu skryptach można znaleźć coś takiego:[/p]
[code=javascript]var width = 0;
var height = 0;
var img = null;
var elem = null;
//itp.[/code]
[p]Tym sposobem brudzimy sobie globalny scope![/p]
[code=javascript]console.log(window['width']);[/code]
[p]A można lepiej, wykorzystując zasięg zmiennych:[/p]
[code=javascript](function()
{
	var width = 0;
	var height = 0;
	var img = null;
	var elem = null;
}());
console.log(window['width']);[/code]
[p]Ok, a jeśli chcemy coś specjalnie umieścić w globalnym scope, np. funkcje naszego super-hiper API? Oczywiście głupim pomysłem jest ładowanie oddzielnie wszystkich 150+ funkcji, bo istnieje szansa, że coś naszego nadpisze funkcje już używane na stronie (np. funkcja o nazwie [tt]resizeImg[/tt]). Wtedy możemy posłużyć się przestrzenią nazw:[/p]
[code=javascript]
var API = {
	resizeImg: function()
	{
		console.log('wywołano');
	}
};
API.resizeImg();
[/code]
[p]Po połączeniu obydwu metod możemy osiągnąć coś takiego[/p]
[code=javascript](function($)
{
	var API = {}
	,resizeImg = jakiswarunek ? function() {console.log('a');} : function() {console.log(b);};
	
	API.resizeImg = resizeImg;
	$.API = API;
}(window))[/code]
[p]Voilla! W globalnym scope mamy tylko to, co chcieliśmy mieć![/p]

[h2="feature-detection"]Feature detection[/h2]
[quote="porneL"]Sniffing an user agent is like sniffing a glue[/quote]
[p]Dlatego też, zamiast opierać się na wątpliwym przekonaniu, że w IE 5.5.1733958399 zainstalowanym pod Win XP z SP 14 na pewno to działa, warto sprawdzić czy naprawdę funkcja x istnieje i jest funkcją. Wyobraźmy sobie choćby, że chcemy stworzyć obiekt przy pomocy [tt]Object.create[/tt], ale nie jesteśmy pewni czy ta metoda istnieje:[/p]
[code=javascript]var o = Object.create(null);[/code]
[p]W starszych IE wywali nam ładny ReferrenceError. A wystarczy sprawdzić czy ta metoda istnieje:[/p]
[code=javascript]if(typeof Object.create === 'function')[/code]
[p]Jeśli nie, to można walnąć [url=https://developer.mozilla.org/en/JavaScript/Reference/Global_Objects/Object/create#Polyfill]polyfilla[/url]. Na tej samej zasadzie działa cała biblioteka [url=http://modernizr.com]Modernizr[/url].[/p]

[h2="delegation"]Event delegation[/h2]
[p]Zdarzenia bąbelkują (jak ktoś nie wierzy, to niech [url=http://www.quirksmode.org/js/events_order.html]poczyta[/url]). Dlatego też możliwe staje się odkrycie, że jakiś tam akapit w jakimś tam divie został kliknięty.[/p]
[code=javascript](function(d)
{
	d.getElementsByTagName('div')[0].addEventListener('click', function(e)
	{
		var t = e.target;
		if(t.tagName.toLowerCase() === 'p')
			console.log(t.innerHTML);
	}, false);
}(document));[/code]
[p]Kiedy warto tego użyć? Jeśli np. mamy dużo przycisków na stronie i wszystkie są w jednym rodzicu. Zamiast przypisywać zdarzenia do każdego z nich, można przypisać te zdarzenia do ich rodzica i za pomocą [tt]e.target[/tt] (w IE [tt]e.srcElement[/tt]) sprawdzić co tak naprawdę zostało kliknięte. Przydaje się także przy stronach AJAX-owych, gdzie część elementów interaktywnych zostanie dodana po wczytaniu strony. Wtedy można doczepić zdarzenie np. do [tt]body[/tt] i mieć pewność, że każdy przycisk będzie klikalny.[/p]
