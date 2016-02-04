<!DOCTYPE html>
	<html lang="pl" dir="ltr" class="no-js">
		<head>
			<meta charset="UTF-8">
			<meta name="viewport" content="width=device-width, initial-scale=1">
			<script>
			(function(H,c){H[c]=H[c].replace(/\bno-js\b/,'')+' js'})(document.documentElement,'className');

			(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
			(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
			m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
			})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

			ga('create', 'UA-33158520-2', 'auto');
			ga('send', 'pageview');

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
			<style>
			body {
				padding-top: 60px;
			}
			.navbar-brand {
				margin: 0;
			}
			.navbar-brand a {
				color: #9d9d9d;
			}
			.site-footer {
				margin-top: 50px;
				padding: 50px 0;
				background: #222;
				color: #9d9d9d;
			}
			.site-footer a {
				color: #fff;
			}
			nav.affix {
				right: 0;
				top: 60px;
				bottom: 0;
			}
			nav.affix .sidebar-header {
				height: 40px;
			}
			nav.affix .sidebar-inner {
				position: absolute;
				top: 80px;
				bottom: 0;
				overflow: auto;
			}
			h1[id] a, h2[id] a, h3[id] a, h2[id] a, h3[id] a, h4[id] a, h5[id] a, h6[id] a {
				opacity: 0;
				transition: opacity .7s ease-in-out;
			}
			h1[id]:hover a, h2[id]:hover a, h3[id]:hover a, h4[id]:hover a, h5[id]:hover a, h6[id]:hover a {
				opacity: .6;
			}
			.code-switch {
				cursor: pointer;
			}
			.code-switch {
				font-size: smaller;
				font-weight: bold;
			}
			pre {
				max-height: 300px;
				overflow: auto;
			}
			pre.expanded {
				max-height: 99999px;
			}
			.code,.quote {
				margin-top: 5px;
			}
			ul li {
				list-style-image: url(/images/bullet.gif);
			}
			</style>
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
					<main class="col-md-8">
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

					{NAV}
				</div>
			</div>

			<footer class="site-footer">
				<div class="container-fluid">
					<p>Copyright © by <a href="https://www.comandeer.pl" rel="author">Comandeer</a>.</p>
				</div>
			</footer>

			<script>
			(function()
			{
				try
				{
					var b = document.getElementsByClassName('code');
					
					[].forEach.call(b, function(t)
					{
						var n = t.nextElementSibling;
						
						if(!n || n.tagName.toLowerCase() !== 'pre' || n.scrollHeight<300)
							return false;

						t.innerHTML = t.innerHTML.replace(':', ' <span class="code-switch">[Rozwiń]</span>:');
						t.getElementsByTagName('span')[0].toSwitch = n;
					});

					document.addEventListener('click', function(e)
					{
						if(!e.target || !e.target.classList.contains('code-switch'))
							return true;

						e.preventDefault();
						
						var t = e.target
						,n = t.toSwitch
						,iH = t.innerHTML;
						
						if(!n || n.tagName.toLowerCase() !== 'pre')
							return false;
						
						n.classList.toggle('expanded');
						t.innerHTML = (iH === '[Zwiń]' ? '[Rozwiń]' : '[Zwiń]');
					});

					//defer loading of disqus
					window.disqus_shortname = 'comandeerowa';

					var comments = document.getElementById('komentarze')
					,offset = comments.getBoundingClientRect().top
					,dsq = document.createElement('script');

					dsq.type = 'text/javascript'; dsq.async = true;
					dsq.src = 'https://' + disqus_shortname + '.disqus.com/embed.js';

					(document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
				}
				catch(e)
				{
				}
			}());
			</script>
			<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
			<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
			<script src="/js/prism.js"></script>
		</body>
	</html>
