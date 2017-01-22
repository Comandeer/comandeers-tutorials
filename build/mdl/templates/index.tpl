<!DOCTYPE html>
	<html lang="pl" dir="ltr">
		<head>
			<meta charset="UTF-8">
			<meta name="viewport" content="width=device-width, initial-scale=1">
			<script>
			if ( location.host === 'tutorials.comandeer.pl' ) {
				(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
				(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
				m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
				})(window,document,'script','//www.google-analytics.com/analytics.js','ga');


				ga('create', 'UA-33158520-2', 'auto');
				ga('send', 'pageview');
			}
			</script>
			<script async defer src="https://code.getmdl.io/1.1.3/material.min.js"></script>
			<title>Lista tutoriali</title>
			<!--[if lt IE 9]>
				<script src="https://html5shim.googlecode.com/svn/trunk/html5.js"></script>
			<![endif]-->
			<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Roboto:300,400,500,700%7CMaterial+Icons">
			<link rel="stylesheet" href="https://code.getmdl.io/1.1.3/material.deep_purple-indigo.min.css">
			<link rel="stylesheet" href="/css/mdl/custom.css">
		</head>
		<body>
			<div class="mdl-layout mdl-js-layout">
				<header class="mdl-layout__header mdl-layout__header--always-visible mdl-layout__header--scroll">
					<div class="mdl-layout__header-row">
							<h1 class="mdl-layout-title">
								<a href="/" class="mdl-layout-title__link mdl-color-text--white" title="« Powrót do spisu tutoriali">Tutorials</a>
							</h1>
					</div>
				</header>

				<div class="mdl-layout__content">
					<main class="content mdl-grid">
						<article class="mdl-cell--12-col" id="lista">
							<h2 class="mdl-typography--title">Lista tutoriali</h2>
							<dl class="mdl-list">
								{LIST}
							</dl>
						</article>

						<article class="mdl-cell--12-col" id="artykuly">
							<h2 class="mdl-typography--title">Pozostałe artykuły</h2>
							<p>Tak, czasami pisuję gdzie indziej.</p>
							<ul class="mdl-list">
								{ARTS}
							</ul>
							<p>Dodatkowo jestem także redaktorem <a href="http://www.webkrytyk.pl/author/Comandeer/" rel="noopener noreferrer">WebKrytyka</a>, <a href="http://pasjaonline.pl" rel="noopener noreferrer">Pasji Online</a> oraz <a href="http://e-magnifier.pl/author/tomasz-jakut/" rel="noopener noreferrer">Magnifiera</a> (chociaż on akurat średnio programistyczny).</p>
						</article>
					</main>

					<footer class="mdl-mini-footer">
						<div class="mdl-mini-footer__left-section">
							<p>Copyright © by <a href="https://www.comandeer.pl" class="mdl-color-text--white" rel="author">Comandeer</a>.</p>
						</div>
					</footer>
				</div>
			</div>
		</body>
	</html>
