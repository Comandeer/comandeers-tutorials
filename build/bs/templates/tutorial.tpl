<!DOCTYPE html>
	<html lang="pl" dir="ltr" class="no-js">
		<head>
			<meta charset="UTF-8">
			<meta name="viewport" content="width=device-width, initial-scale=1">
			<script>
			(function(H,c){H[c]=H[c].replace(/\bno-js\b/,'')+' js'})(document.documentElement,'className');

			if ( location.host === 'tutorials.comandeer.pl' ) {
				(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
				(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
				m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
				})(window,document,'script','//www.google-analytics.com/analytics.js','ga');


				ga('create', 'UA-33158520-2', 'auto');
				ga('send', 'pageview');
			}

			/*
			 Details primitive polyfill by Comandeer
			 */
			"open"in document.createElement("details")||document.addEventListener("DOMContentLoaded",function(){try{[].forEach.call(document.querySelectorAll("details"),function(e){var t=e.querySelector("summary"),n=function(n){n?(e.removeAttribute("open"),t.setAttribute("aria-expanded",!1)):(e.setAttribute("open","open"),t.setAttribute("aria-expanded",!0))},i=function(){n(e.hasAttribute("open"))};n(!e.hasAttribute("open")),t.setAttribute("tabindex",0),t.setAttribute("role","button"),t.addEventListener("click",i),t.addEventListener("keyup",function(e){-1!==[13,32].indexOf(e.keyCode)&&(e.preventDefault(),this.click())})})}catch(e){}})
			</script>
			<title>{TITLE}</title>
			<!--[if lt IE 9]>
				<script src="https://html5shim.googlecode.com/svn/trunk/html5.js"></script>
			<![endif]-->
			<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
			<link rel="stylesheet" href="/css/prism.css">
			<link rel="stylesheet" href="/css/bs/custom.css">
		</head>
		<body>
			<header class="navbar navbar-inverse navbar-fixed-top">
				<div class="container-fluid">
					<div class="navbar-header">
						<h1 class="navbar-brand"><a href="/" title="« Powrót do spisu tutoriali">Tutorials</a></h1>
					</div>
				</div>
			</header>

			<div class="container-fluid">
				<div class="row">
					{NAV}

					<main class="col-md-8 col-md-offset-{OFFSET}">
						<article>
						{CONTENT}
						</article>
						<section id="komentarze">
							<h2>Komentarze</h2>
							<div id="disqus_thread"></div>
							<noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
							<a href="http://disqus.com" class="dsq-brlink">comments powered by <span class="logo-disqus">Disqus</span></a>
						</section>
					</main>
				</div>
			</div>

			<footer class="site-footer">
				<div class="container-fluid">
					<p>Copyright © by <a href="https://www.comandeer.pl" rel="author">Comandeer</a>.</p>
				</div>
			</footer>

			<script>
			( function() {
				try {
					var codes = document.getElementsByClassName( 'code' );

					[].forEach.call( codes, function( code ) {
						var next = code.nextElementSibling;

						if ( !next || next.tagName.toLowerCase() !== 'pre' || next.scrollHeight < 300 ) {
							return false;
						}

						code.innerHTML = code.innerHTML.replace( ':', ' <span class="code-switch">[Rozwiń]</span>:' );
						code.getElementsByTagName( 'span' )[ 0 ].toSwitch = next;
					} );

					document.addEventListener( 'click', function( evt ) {
						if ( !evt.target || !evt.target.classList.contains( 'code-switch' ) ) {
							return true;
						}

						evt.preventDefault();

						var target = evt.target,
							next = target.toSwitch,
							html = target.innerHTML;

						if ( !next || next.tagName.toLowerCase() !== 'pre' ) {
							return false;
						}

						next.classList.toggle( 'expanded' );
						target.innerHTML = ( html === '[Zwiń]' ? '[Rozwiń]' : '[Zwiń]' );
					} );

					//defer loading of disqus

					if ( location.host === 'tutorials.comandeer.pl' ) {
						window.disqus_shortname = 'comandeerowa';

						var dsq = document.createElement( 'script' );

						dsq.src = 'https://' + disqus_shortname + '.disqus.com/embed.js';

						( document.getElementsByTagName( 'head' )[ 0 ] || document.getElementsByTagName( 'body' )[ 0 ] ).appendChild( dsq );
					}
				} catch( err ) {}
			} () );
			</script>
			<script src="https://code.jquery.com/jquery-1.12.0.min.js" integrity="sha384-XxcvoeNF5V0ZfksTnV+bejnCsJjOOIzN6UVwF85WBsAnU3zeYh5bloN+L4WLgeNE" crossorigin="anonymous"></script>
			<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
			<script>
			$( 'nav' ).on( 'affix.bs.affix', function() {
				$( 'main' ).removeClass( 'col-md-offset-0' ).addClass( 'col-md-offset-4' );
			} ).on( 'affix-top.bs.affix affix-bottom.bs.affix', function() {
				$( 'main' ).removeClass( 'col-md-offset-4' );
			} ).affix( {
				offset: {
					top: function() {
						return ( this.top = $( '.navbar-fixed-top' ).outerHeight( true ) + 10 );
					},
					bottom: function () {
						return ( this.bottom = $( '.site-footer' ).outerHeight( true ) + 10 );
					}
				}
			} )
			</script>
			<script src="/js/prism.js"></script>
		</body>
	</html>
