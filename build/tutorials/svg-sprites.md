<description>Czyli jak zrobić odpowiednik Font Awesome przy pomocy SVG.</description>

<h1 id="start">[CSS] Sprite'y w SVG</h1>

<div class="alert alert-danger">

Ten tutorial powstał bardzo dawno temu i od tego czasu zmieniło się sporo! Polecam [artykuł na CSS-Tricks.com](http://css-tricks.com/svg-fragment-identifiers-work/), opisujący temat o wiele dokładniej.

</div>

Czasami sprite'y w CSS mogą być wkurzające

```css
.help
{
	background: url(super-hiper-sprite.png) no-repeat -567px -234px;
}
```

Jednak ostatnio [ktoś](http://xn--dahlstrm-t4a.net/) wpadł na genialny pomysł: zróbmy to w SVG!

Na czym polega cały trick? Otóż chodzi o zapisanie w jednym pliku SVG kilku ikonek. Do tego dodano trochę magii z CSS3, aby tylko potrzebna nam ikonka się pokazywała. Ta magia jest już dobrze znana:

```css
.icon {display:none;}
.icon:target {display:block;}
```

Stwórzmy sobie zatem prosty pliczek SVG:

```markup
<?xml version="1.0" encoding="utf-8"?>
<svg version="1.1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16">
	<defs>
		<style>
			.icon
			{
				display: none;
			}
			.icon:target
			{
				display: inline;
			}
		</style>
	</defs>
	<g id="rect" class="icon">
	<rect x="8" width="2" height="16"/>
	<rect y="8" width="16" height="2" />
	</g>
	<g id="line" class="icon">
		<line x1="0" y1="0" x2="16" y2="16" stroke="blue" stroke-width="1" />
		<line x1="0" y1="0" x2="0" y2="16" stroke="red" stroke-width="1" />
	</g>
</svg>
```

najwyższych lotów to on nie jest, wiem, ale do prezentacji starczy ;)

Ot, nic nadzwyczajnego - mamy dwie ikonki: jakieś [dwa prostokąciki](http://comandeer.pl/tutorials/res/svg-sprites/stack.svg#rect) i [dwie linie](http://comandeer.pl/tutorials/res/svg-sprites/stack.svg#line). Jak widać, początkowo obydwie są ukryte, ale `:target` działa :D Ważna dla nas jest klasa `.icon` i `id` poszczególnych ikonek (do nich się będziemy odwoływać). Można oczywiście jeszcze bardziej uprościć kod i pozbyć się klasy `.icon`, posługując się selektorem `g`.

W HTML i CSS też wielkiego problemu nie ma:

```markup
<style>
.icon.rect
{
	width: 32px;
	height: 32px;
	background: url(stack.svg#rect) no-repeat;
}
</style>
<button class="icon rect"></button>
```

Ot, zwykłe tło w formacie SVG... I tu pojawia się problem, bo technika ta działa tylko w Firefoxie, co mnie osobiście dziwi (ej, w końcu SVG to wieloletni standard de facto!). Na szczęście wkrótce wsparcie ma się pojawić także w Operze i reszcie.

Technika IMO bardzo pomocna i obiecująca. Nie dość, że łatwiej się nią posługiwać (nie trzeba wyliczać pozycji tła), to jeszcze obrazki automatycznie się skalują do wielkości elementu (można to sprawdzić, zmieniając wielkość naszego przycisku). No i teoretycznie powinno to ważyć mniej niż zwykły obrazek ;)


[[size=14]DEMO[/size]](http://tutorials.comandeer.pl/res/svg-sprites)


<div class="alert alert-info">

Artykuł można potraktować jako bardzo bardzo luźne tłumaczenie [notki Simuraia](http://simurai.com/post/20251013889/svg-stacks). W porównaniu do orginalnej metody, lekko uprościłem kod SVG.

</div>
