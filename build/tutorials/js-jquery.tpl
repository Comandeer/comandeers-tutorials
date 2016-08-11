[h1="start"]Czemu nie potrzebujesz jQuery?[/h1]

[h2="mimo"]Mimo że zdaje ci się inaczej[/h2]
[p]Ten tutorial kieruję do wszystkich tych, którzy nie wyobrażają sobie wykonania jakiejkolwiek prostej czynności w JS bez użycia tej wszechstronnej biblioteki. Część zarzutów tyczy się też mnie, gdyż osobiście również korzystam z jQuery (hej, to nie moja wina, że DOM jest tak spaprany!)[/p]


[h2="alternatywa"]Alternatywa?[/h2]
[p][url=http://vanilla-js.com/]VanillaJS[/url] + [url=http://microjs.com/]jeden z tych maluczkich[/url][/p]


[h2="dom"]Podstawowe operacje DOM-owe[/h2]

[h3="selektory"]Wyszukiwanie po selektorach[/h3]
[p]Potęgą jQuery jest jego silniczek Sizzle, który pozwala wyszukać dowolny element tylko i wyłącznie na podstawie selektora. To jest często główny/jedyny powód, dla którego część webmasterów sięga po jQ.[/p]
[code=javascript]$( '#bardzo > optymalny .selektor #ktory .na-bank.dziala' );[/code]
[p=info]Oczywiście optymalizacja takich selektorów to zupełnie inna sprawa.[/p]
[p]Skupmy się na tym, czy w czystym JS istnieje jakaś alternatywa dla tego pięknego owijacza? Otóż tak![/p]
[code=javascript]document.querySelectorAll( '#bardzo > optymalny .selektor #ktory .na-bank.dziala' );[/code]
[p]Prawdę mówiąc, jeśli przyjrzymy się kodowi jQ, zauważymy, że wewnętrznie używa on właśnie tej metody. Nie trzeba chyba mówić, co jest szybsze. Oczywiście można pójść o krok dalej i zrobić sobie coś takiego:[/p]
[code=javascript]var $ = document.querySelectorAll.bind( document );[/code]
[p]Voila! Mamy jQ bez jQ.[/p]

[h3="chaining"]Chainowanie metod[/h3]
[p]Chainowanie metod to to, co decyduje o niezwykłej użyteczności jQ w zastosowaniach DOM-owych.[/p]
[code=javascript]$( '<a>' ).attr( 'href', '#' ).on( 'click', function() {} );[/code]
[p]Owszem, w VanillaJS nie jestem w stanie uzyskać tak wygodnej obsługi DOM. Ale tu z pomocą przychodzi nam [url=http://leaverou.github.com/chainvas/]Chainvas[/url] – małe cudeńko, które jest w stanie złańcuchować [i]de facto[/i] wszystko. Dzięki temu można spokojnie napisać:[/p]
[code=javascript]document.createElement( 'a' ).setAttribute( 'href', '#' ).addEventListener( 'click', function() {} );[/code]
[p]I tym sposobem odebraliśmy jQ największą jego przewagę w operacjach DOM-owych, oszczędzając przy tym 31KB kodu (oczywiście mowa tu o wersjach gzipniętych i zminifikowanych).[/p]

[h3="delegation"]Event delegation[/h3]
[p]w jQ jest prosto:[/p]
[code=javascript]$( document ).on( 'click', '.clicky', function( evt ) {
	//awesome stuff
} );[/code]
[p]w czystym JS też jest prosto[/p]
[code=javascript]document.addEventListener( 'click', function( evt ) {
	if ( !evt.target || !e.target.matches( '.clicky' ) /* Można zmienić na !evt.target.classList.contains( 'clicky' )*/ ) {
		return;
	}
	//awesome stuff
}, false );[/code]

[h3="clone"][tt].clone[/tt][/h3]
[p]Żeby sklonować obiekt w jQ, wystarczy skorzystać z metody [tt].clone[/tt]. Czy da się zrobić coś takiego w czystym JS? A i owszem.[/p]
[code=javascript]function clone( obj ) {
	return obj.cloneNode ? obj.cloneNode( obj ) : JSON.parse( JSON.stringify( obj ) );
}
console.log( clone( document.createElement( 'a' ) ) );[/code]
[p]Prosta i przyjemna sztuczka.[/p]

[h3="extend"][tt].extend[/tt][/h3]
[p]To już nie jest do końca DOM, ale może się tu nadać.[/p]
[p]Jak wiadomo, w jQ mamy metodę [tt].extend[/tt] rozszerzającą nam obiekt:[/p]
[code=javascript]console.log( $.extend( {}, { cos: 1 } ) );[/code]
[p]W czystym JS [url=https://github.com/shimondoodkin/nodejs-clone-extend/blob/master/index.js#L40]też się da[/url]. Ba, można być nawet chamskim i po prostu wyciągnąć ten kod z jQ.[/p]


[h2="animacje"]Animacje[/h2]
[p]Co tu dużo mówić – od kiedy w CSS są [tt]transition[/tt] i [tt]animation[/tt], większość rzeczy można w ogóle wyjąć poza JS. Natomiast niektóre inne animacje z jQ można równie łatwo napisać w czystym JS. Przykład, lekko poprawiony, ze strony VanillaJS:[/p]
[code=javascript]$( '#thing' ).fadeOut();
//vs
var s = document.getElementById( 'd' ).style;
s.opacity = +( s.opacity || window.getComputedStyle( el )[ 'opacity' ] );
( function f() { ( s.opacity -= 1 / 100 ) <= 0 ? s.display = "none" : requestAnimationFrame( f ) }() );[/code]
[p]Nie trzeba chyba zaznaczać, że porównanie objętościowe tych trzech linijek i całego jQ wypada korzystnie dla czystego JS.[/p]
[p]oczywiście warto zauważyć, że rAF jest tylko w nowszych browserach i trza by zarzucić jakimś fallbackiem:[/p]
[code=javascript]window.requestAnimationFrame = window.requestAnimationFrame || window.webkitRequestAnimationFrame || window.mozRequestAnimationFrame || window.msRequestAnimationFrame || window.oRequestAnimationFrame || function( f ){ setTimeout( f, 1000 / 60 ); };[/code]


[h2="xhr"]XHR[/h2]
[p]Tu nie będzie przykładów, jedynie krótkie info.[/p]
[p]Otóż wrapper w jQ jest cholernie wygodny i w ogóle. Jednak jeśli chcemy mieć dostęp do bardziej zaawansowanych własności obiektu xhr (np. [tt]xhr.upload.progress[/tt]), [url=https://github.com/malsup/form/blob/master/jquery.form.js#L258]trzeba użyć natywnego obiektu[/url].[/p]


[h2="ui"]jQUI[/h2]
[p]Wiele rzeczy [url=http://pulpit.luke.co.pl/]da się napisać[/url] bez tego, wystarcza trochę pomyślunku.[/p]
[p]Szybki przykład na resize elementów (akurat wykorzystywany w zupełnie innym kontekście niż browserowy):[/p]
[code=javascript]if ( [ 'l', 'r' ].indexOf( resizing ) !== -1 ) {
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
}[/code]
[p]co prawda kod najwyższych lotów nie jest i raczej przedstawia ogólną ideę jak to może wyglądać, niż jak to powinno wyglądać. Ba, można zdać się na natywne funkcje, takie jak [tt]resize[/tt] w CSS (miało działać na wszystkim, ale nie wiem czy ta obietnica jest spełniona) i drag&drop (w IE od wersji 5 bodaj!). Dobitnie to pokazuje, że nawet tak skomplikowane czynności jakie wykonuje za nas jQUI można zrobić zarówno bez niego, jak i jego ojca – jQ.[/p]



[h2="ale"]Ale za to w jQ da się…[/h2]
[p]Z racji tego, że jQ jest tylko subsetem JS, śmiem twierdzić, że nie ma rzeczy, której nie dałoby się osiągnąć w czystym JS. Jestem w stanie podjąć każde wyzwanie i udowodnić, że się da bez![/p]

[h2="czy-porzucic"]Czy porzucić?[/h2]
[p]Nie trzeba. Sam używam i jestem zadowolony. Cały problem polega na tym, że jQuery jest przedstawiane jako lekarstwo na wszelkie zło JS, a to po prostu wierutna bzdura. jQuery powstało jako helper DOM-owy i to wciąż jest jego główną siłą.[/p]
[p]Co więcej, jQuery niszczy świadomość programistów sieciowych. Coraz częściej można spotkać bowiem nie programistów JS, a programistów jQuery, którzy jedynie tą biblioteką są w stanie się posługiwać.[/p]
[p]Dlatego nie mówię, żeby przestać jQ używać. Jeśli natomiast do stronki, gdzie trza oskryptować jeden link, wsadzasz jQ, to znak, że coś jest nie tego. Jeśli natomiast umiesz zastąpić jQ [url=http://www.forumweb.pl/javascript/cancelbubble-stoppropagation-problem/397808#397808]własnym rozwiązaniem[/url] i robisz to, gdy potrzebujesz jedną, konkretną rzecz, to oznacza, że jesteś zupełnie normalnym użytkownikiem tej biblioteki i syndrom uzależnienia Ciebie nie dotyczy.[/p]
