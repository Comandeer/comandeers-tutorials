<!DOCTYPE html>
	<html lang="pl" dir="ltr" class="no-js">
		<head>
			<meta charset="UTF-8">
			<meta name="viewport" content="width=device-width,initial-scale=1.0">
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
			<link rel="stylesheet" href="/css/framework.css">
			<link rel="stylesheet" href="/css/prism.css">
			<style>
			h1[id]:hover:after,h2[id]:hover:after,h3[id]:hover:after
			{
				content:'#'attr(id);
				margin-left:20px;
				opacity:.4;
			}
			.code-switch
			{
				cursor:pointer;
			}
			.code-switch
			{
				font-size:smaller;
				font-weight:bold;
			}
			pre
			{
				max-height:300px;
				overflow:auto;
			}
			pre.expanded
			{
				max-height:99999px;
			}
			.code,.quote
			{
				margin-top:5px;
			}
			ul 
			{
				list-style-image:url(/images/bullet.gif);
			}
			</style>
		</head>
		<body class="fluid">
			<header class="topbar gradient">
				<h1><a href="/" title="« Powrót do spisu tutoriali">Tutorials</a></h1>
			</header>
			<main class="content">
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
			<footer class="footer">Copyright &copy; by <a href="http://www.comandeer.pl" rel="author">Comandeer</a>.</footer>
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
					dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';

					if(document.documentElement.scrollHeight <= document.documentElement.clientHeight + 50 || location.hash.indexOf('#comment-') === 0)
						(document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
					else
						window.addEventListener('scroll', (function throttle()
						{
							var threshhold = 50
							,last
							,deferTimer
							,fn = function()
							{
								if(window.scrollY < offset - (document.documentElement.clientHeight))
									return;

								(document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);

								unpin();
							}
							,f = function()
							{
								var context = this;

								var now = +new Date
								,args = arguments;

								if(last && now < last + threshhold)
								{
									// hold on to it
									clearTimeout(deferTimer);

									deferTimer = setTimeout(function()
									{
										last = now;
										fn.apply(context, args);
									}, threshhold);
								}
								else
								{
									last = now;
									fn.apply(context, args);
								}
							}
							,unpin = function()
							{
								window.removeEventListener('scroll', f)
							};

							return f;
						}()));
				}
				catch(e)
				{
				}
			}());
			</script>
			<script src="/js/prism.js"></script>
		</body>
	</html>
