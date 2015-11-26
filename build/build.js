var fs = require('fs')
,tutDir = './templates/tutorials/'
,tutTemplate = fs.readFileSync('./templates/template.tpl', 'utf8')
,parser = require('./bbcode')
,dom = require('cheerio')
,tutorials = fs.readdirSync(tutDir);

tutorials.forEach(function(tutorial)
{
	var content = fs.readFileSync(tutDir + tutorial, 'utf8')
	,output = tutTemplate
	,nav = `<nav class="sidebar nice">
		<h2 class="sidebar-header">Spis treści</h2>
			<div class="sidebar-inner">
				<ul class="unstyled">
				{NAV}
				</ul>
			</div>
		</nav>`
	,$ul = dom.load(nav)('ul')
	,tmp = parser.process({
		text: content
		,addInLineBreaks: false
	});

	console.log(tmp.errorQueue); // debugging, yay!
			
	content = tmp.html;

	var $ = dom.load(content)
	,lastDepth = null
	,lastElem = null
	,currentSubmenu = null;

	$ul.html('');

	$('h1,h2,h3,h4,h5,h6').each(function()
	{
		if(this.is('h1#start'))
			output = output.replace(/{TITLE}/g, this.html());
		else
		{
			var depth = +this[0].name.substring(1)
			,html = '';

			html = '<li><a href="#' + this.attr('id') + '">' + this.html() + '</a></li>';
					

			if(lastDepth)
			{
				if(lastDepth < depth)
				{
					lastElem.append('<ul class="unstyled"></ul>');
					currentSubmenu = lastElem.children().last();
				}
				else if(lastDepth > depth)
					currentSubmenu = null;
			}

			if(currentSubmenu)
				currentSubmenu.append(html);
			else
				$ul.append(html);

			lastDepth = depth;
			lastElem = $ul.children().last();
		}
	});

	if($ul.children.length > 0)
		nav = nav.replace('{NAV}', $ul.html());
	else
		nav = '';

	output = output.replace('{NAV}', nav)
	output = output.replace('{CONTENT}', content);
	output = output.replace('{DISQUS}', tutorial.replace('.tpl', ''));
			
	fs.writeFileSync('../' + tutorial.replace('tpl', 'html'), output, 'utf8');
});

// building list of tutorials
var list = fs.readFileSync('./templates/list.tpl', 'utf8')
,tuts = require('./tutslist')
,arts = require('./artslist')
,response = ''
,artsr = '';

Object.keys(tuts).forEach(function(t)
{
	var tut = tuts[t];
	
	response += '<dt>' + t + '</dt>';

	Object.keys(tut).forEach(function(x)
	{
		response += '<dd><a href="http://tutorials.comandeer.pl/' + tut[x] + '.html">' + x + '</a></dd>';
	})			
});

Object.keys(arts).reverse().forEach(function(t)
{
	artsr += '<li><a href="' + arts[t] + '">' + t + '</a></li>';
});

list = list.replace('{LIST}', response);
list = list.replace('{ARTS}', artsr);

fs.writeFileSync('../index.html', list, 'utf8');
