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
			<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Roboto:300,400,500,700%7CMaterial+Icons">
			<link rel="stylesheet" href="https://code.getmdl.io/1.1.3/material.deep_purple-indigo.min.css">
			<link rel="stylesheet" href="/css/prism.css">
			<link rel="stylesheet" href="/css/custom.css">
		</head>
		<body>
			<div class="mdl-layout mdl-js-layout">
				<header class="mdl-layout__header mdl-layout__header--scroll">
					<div class="mdl-layout__header-row">
							<h1 class="mdl-layout-title">
								<a href="/" class="mdl-layout-title__link mdl-color-text--white" title="« Powrót do spisu tutoriali">Tutorials</a>
							</h1>
					</div>
				</header>

				{NAV}

				<div class="mdl-layout__content">
					<main class="content mdl-grid mdl-grid--no-spacing">
						<article class="mdl-cell--12-col">
							{CONTENT}
						</article>

						<section id="komentarze" class="mdl-cell--12-col">
							<h2 class="mdl-typography--title">Komentarze</h2>
							<div id="disqus_thread"></div>
							<noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
							<a href="http://disqus.com" class="dsq-brlink">comments powered by <span class="logo-disqus">Disqus</span></a>
						</section>
					</main>

					<footer class="mdl-mini-footer">
						<div class="mdl-mini-footer__left-section">
							<p>Copyright © by <a href="https://www.comandeer.pl" class="mdl-color-text--white" rel="author">Comandeer</a>.</p>
						</div>
					</footer>
				</div>
			</div>

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
			<script src="https://code.getmdl.io/1.1.3/material.min.js"></script>
			<script src="/js/prism.js"></script>
		</body>
	</html>
