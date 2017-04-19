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
			<title>Lista tutoriali</title>
			<!--[if lt IE 9]>
				<script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv-printshiv.min.js"></script>
			<![endif]-->
			<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
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
				<main class="content col-md-10 col-md-offset-1">
					<h2 id="lista">Lista tutorialów</h2>
					<dl class="list-group">
							{LIST}
						</dl>

					<h2 id="artykuly">Pozostałe artykuły</h2>
					<p>Tak, czasami pisuję gdzie indziej.</p>
					<ul class="list-group">
						{ARTS}
					</ul>
					<p>Dodatkowo jestem także redaktorem <a href="http://www.webkrytyk.pl/author/Comandeer/" rel="noopener noreferrer">WebKrytyka</a>, <a href="http://pasjaonline.pl" rel="noopener noreferrer">Pasji Online</a> oraz <a href="http://e-magnifier.pl/author/tomasz-jakut/" rel="noopener noreferrer">Magnifiera</a> (chociaż on akurat średnio programistyczny). W wolnych chwilach <a href="https://comandeer.github.io/blog" rel="noopener noreferrer">prowadzę osobistego bloga</a>.</p>
				</main>
			</div>

			<footer class="site-footer">
				<div class="container-fluid">
					<p>Copyright © by <a href="https://www.comandeer.pl" rel="author">Comandeer</a>.</p>
				</div>
			</footer>

			<script src="https://code.jquery.com/jquery-1.12.0.min.js" integrity="sha384-XxcvoeNF5V0ZfksTnV+bejnCsJjOOIzN6UVwF85WBsAnU3zeYh5bloN+L4WLgeNE" crossorigin="anonymous"></script>
			<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
		</body>
	</html>
