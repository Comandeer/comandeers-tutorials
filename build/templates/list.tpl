<!DOCTYPE html>
	<html lang="pl" dir="ltr">
		<head>
			<meta charset="UTF-8">
			<meta name="viewport" content="width=device-width,initial-scale=1.0">
			<script>
			(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
			(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
			m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
			})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

			ga('create', 'UA-33158520-2', 'auto');
			ga('send', 'pageview');
			</script>
			<title>Lista tutoriali</title>
			<!--[if lt IE 9]>
				<script src="https://html5shim.googlecode.com/svn/trunk/html5.js"></script>
			<![endif]-->
			<link rel="stylesheet" href="/css/framework.css">
		</head>
		<body>
			<header class="topbar gradient">
				<h1><a href="/" title="« Powrót do spisu tutoriali">Tutorials</a></h1>
			</header>
			<main class="content">
				<h2 id="lista">Lista tutoriali</h2>
					<dl>
						{LIST}
					</dl>
					
				<h2 id="artykuly">Pozostałe artykuły</h2>
				<p>Tak, czasami pisuję gdzie indziej.</p>
				<ul>
					{ARTS}
				</ul>
				<p>Dodatkowo jestem także redaktorem <a href="http://www.webkrytyk.pl/author/Comandeer/">WebKrytyka</a>, <a href="http://pasjaonline.pl">Pasji Online</a> oraz <a href="http://e-magnifier.pl/author/tomasz-jakut/">Magnifiera</a> (chociaż on akurat średnio programistyczny).</p>
			</main>
			<footer class="footer">Copyright © by <a href="https://www.comandeer.pl" rel="author">Comandeer</a>.</footer>
		</body>
	</html>
