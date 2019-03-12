<description>Pokazanie kilku alternatywnych ścieżek.</description>

<h1 id="start">Czemu nie potrzebujesz jQuery?</h1>


<h2 id="mimo">Mimo że zdaje ci się inaczej</h2>

Ten tutorial kieruję do wszystkich tych, którzy nie wyobrażają sobie wykonania jakiejkolwiek prostej czynności w JS bez użycia tej wszechstronnej biblioteki. Część zarzutów tyczy się też mnie, gdyż osobiście również korzystam z jQuery (hej, to nie moja wina, że DOM jest tak spaprany!)



<h2 id="alternatywa">Alternatywa?</h2>

[VanillaJS](http://vanilla-js.com/) + [jeden z tych maluczkich](http://microjs.com/)



<h2 id="dom">Podstawowe operacje DOM-owe</h2>


<h3 id="selektory">Wyszukiwanie po selektorach</h3>

Potęgą jQuery jest jego silniczek Sizzle, który pozwala wyszukać dowolny element tylko i wyłącznie na podstawie selektora. To jest często główny/jedyny powód, dla którego część webmasterów sięga po jQ.

```javascript
$( '#bardzo > optymalny .selektor #ktory .na-bank.dziala' );
```

<div class="alert alert-info">

Oczywiście optymalizacja takich selektorów to zupełnie inna sprawa.

</div>

Skupmy się na tym, czy w czystym JS istnieje jakaś alternatywa dla tego pięknego owijacza? Otóż tak!

```javascript
document.querySelectorAll( '#bardzo > optymalny .selektor #ktory .na-bank.dziala' );
```

Prawdę mówiąc, jeśli przyjrzymy się kodowi jQ, zauważymy, że wewnętrznie używa on właśnie tej metody. Nie trzeba chyba mówić, co jest szybsze. Oczywiście można pójść o krok dalej i zrobić sobie coś takiego:

```javascript
var $ = document.querySelectorAll.bind( document );
```

Voila! Mamy jQ bez jQ.


<h3 id="chaining">Chainowanie metod</h3>

Chainowanie metod to to, co decyduje o niezwykłej użyteczności jQ w zastosowaniach DOM-owych.

```javascript
$( '<a>' ).attr( 'href', '#' ).on( 'click', function() {} );
```

Owszem, w VanillaJS nie jestem w stanie uzyskać tak wygodnej obsługi DOM. Ale tu z pomocą przychodzi nam [Chainvas](http://leaverou.github.com/chainvas/) – małe cudeńko, które jest w stanie złańcuchować <i>de facto</i> wszystko. Dzięki temu można spokojnie napisać:

```javascript
document.createElement( 'a' ).setAttribute( 'href', '#' ).addEventListener( 'click', function() {} );
```

I tym sposobem odebraliśmy jQ największą jego przewagę w operacjach DOM-owych, oszczędzając przy tym 31KB kodu (oczywiście mowa tu o wersjach gzipniętych i zminifikowanych).


<h3 id="delegation">Event delegation</h3>

w jQ jest prosto:

```javascript
$( document ).on( 'click', '.clicky', function( evt ) {
	//awesome stuff
} );
```

w czystym JS też jest prosto

```javascript
document.addEventListener( 'click', function( evt ) {
	if ( !evt.target || !e.target.matches( '.clicky' ) /* Można zmienić na !evt.target.classList.contains( 'clicky' )*/ ) {
		return;
	}
	//awesome stuff
}, false );
```


<h3 id="clone">

`.clone`

</h3>

Żeby sklonować obiekt w jQ, wystarczy skorzystać z metody `.clone`. Czy da się zrobić coś takiego w czystym JS? A i owszem.

```javascript
function clone( obj ) {
	return obj.cloneNode ? obj.cloneNode( obj ) : JSON.parse( JSON.stringify( obj ) );
}
console.log( clone( document.createElement( 'a' ) ) );
```

Prosta i przyjemna sztuczka.


<h3 id="extend">

`.extend`

</h3>

To już nie jest do końca DOM, ale może się tu nadać.

Jak wiadomo, w jQ mamy metodę `.extend` rozszerzającą nam obiekt:

```javascript
console.log( $.extend( {}, { cos: 1 } ) );
```

W czystym JS [też się da](https://github.com/shimondoodkin/nodejs-clone-extend/blob/master/index.js#L40). Ba, można być nawet chamskim i po prostu wyciągnąć ten kod z jQ.



<h2 id="animacje">Animacje</h2>

Co tu dużo mówić – od kiedy w CSS są `transition` i `animation`, większość rzeczy można w ogóle wyjąć poza JS. Natomiast niektóre inne animacje z jQ można równie łatwo napisać w czystym JS. Przykład, lekko poprawiony, ze strony VanillaJS:

```javascript
$( '#thing' ).fadeOut();
//vs
var s = document.getElementById( 'd' ).style;
s.opacity = +( s.opacity || window.getComputedStyle( el )[ 'opacity' ] );
( function f() { ( s.opacity -= 1 / 100 ) <= 0 ? s.display = "none" : requestAnimationFrame( f ) }() );
```

Nie trzeba chyba zaznaczać, że porównanie objętościowe tych trzech linijek i całego jQ wypada korzystnie dla czystego JS.

oczywiście warto zauważyć, że rAF jest tylko w nowszych browserach i trza by zarzucić jakimś fallbackiem:

```javascript
window.requestAnimationFrame = window.requestAnimationFrame || window.webkitRequestAnimationFrame || window.mozRequestAnimationFrame || window.msRequestAnimationFrame || window.oRequestAnimationFrame || function( f ){ setTimeout( f, 1000 / 60 ); };
```



<h2 id="xhr">XHR</h2>

Tu nie będzie przykładów, jedynie krótkie info.

Otóż wrapper w jQ jest cholernie wygodny i w ogóle. Jednak jeśli chcemy mieć dostęp do bardziej zaawansowanych własności obiektu xhr (np. `xhr.upload.progress`), [trzeba użyć natywnego obiektu](https://github.com/malsup/form/blob/master/jquery.form.js#L258).



<h2 id="ui">jQUI</h2>

Wiele rzeczy [da się napisać](http://pulpit.luke.co.pl/) bez tego, wystarcza trochę pomyślunku.

Szybki przykład na resize elementów (akurat wykorzystywany w zupełnie innym kontekście niż browserowy):

```javascript
if ( [ 'l', 'r' ].indexOf( resizing ) !== -1 ) {
	if ( resizing === 'l' ) {
		window.frame.width += x - e.pageX;
		window.frame.left -= x - e.pageX;
	} else {
		window.frame.width -= x - e.pageX;
	}

	if ( window.frame.width < 60 ) {
		window.frame.width = 60;
	}

	x = e.pageX;
	y = e.pageY;
} else if ( [ 't', 'b' ].indexOf( resizing ) !== -1 ) {
	if ( resizing === 't' ) {
		window.frame.height += y - e.pageY;
		window.frame.top -= y - e.pageY;
	} else {
		window.frame.height -= y - e.pageY;
	}

	if ( window.frame.height < 120 ) {
		window.frame.height = 120;
	}

	x = e.pageX;
	y = e.pageY;
} else {
	window.frame.width -= x-e.pageX;
	window.frame.height -= y-e.pageY;
}
```

co prawda kod najwyższych lotów nie jest i raczej przedstawia ogólną ideę jak to może wyglądać, niż jak to powinno wyglądać. Ba, można zdać się na natywne funkcje, takie jak `resize` w CSS (miało działać na wszystkim, ale nie wiem czy ta obietnica jest spełniona) i drag&drop (w IE od wersji 5 bodaj!). Dobitnie to pokazuje, że nawet tak skomplikowane czynności jakie wykonuje za nas jQUI można zrobić zarówno bez niego, jak i jego ojca – jQ.




<h2 id="ale">Ale za to w jQ da się…</h2>

Z racji tego, że jQ jest tylko subsetem JS, śmiem twierdzić, że nie ma rzeczy, której nie dałoby się osiągnąć w czystym JS. Jestem w stanie podjąć każde wyzwanie i udowodnić, że się da bez!


<h2 id="czy-porzucic">Czy porzucić?</h2>

Nie trzeba. Sam używam i jestem zadowolony. Cały problem polega na tym, że jQuery jest przedstawiane jako lekarstwo na wszelkie zło JS, a to po prostu wierutna bzdura. jQuery powstało jako helper DOM-owy i to wciąż jest jego główną siłą.

Co więcej, jQuery niszczy świadomość programistów sieciowych. Coraz częściej można spotkać bowiem nie programistów JS, a programistów jQuery, którzy jedynie tą biblioteką są w stanie się posługiwać.

Dlatego nie mówię, żeby przestać jQ używać. Jeśli natomiast do stronki, gdzie trza oskryptować jeden link, wsadzasz jQ, to znak, że coś jest nie tego. Jeśli natomiast umiesz zastąpić jQ [własnym rozwiązaniem](http://www.forumweb.pl/javascript/cancelbubble-stoppropagation-problem/397808#397808) i robisz to, gdy potrzebujesz jedną, konkretną rzecz, to oznacza, że jesteś zupełnie normalnym użytkownikiem tej biblioteki i syndrom uzależnienia Ciebie nie dotyczy.
