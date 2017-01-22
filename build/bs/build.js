var fs = require( 'fs' ),
	tutDir = '../tutorials/',
	tutTemplate = fs.readFileSync( './templates/tutorial.tpl', 'utf8' ),
	parser = require( './bbcode' ),
	dom = require( 'cheerio' ),
	tutorials = fs.readdirSync( tutDir );

tutorials.forEach( function( tutorial ) {
	var content = fs.readFileSync( tutDir + tutorial, 'utf8' ),
		output = tutTemplate,
		nav = `<nav class="sidebar col-md-4 well">
		<h2 class="sidebar-header">Spis treści</h2>
			<div class="sidebar-inner">
				<ul class="unstyled">
				{NAV}
				</ul>
			</div>
		</nav>`,
		offset = 0,
		$ul = dom.load( nav )( 'ul' ),
		tmp = parser.process( {
			text: content,
			addInLineBreaks: false
		} );

	console.log( tmp.errorQueue ); // debugging, yay!

	content = tmp.html;

	var $ = dom.load( content ),
		lastDepth = null,
		lastElem = null,
		currentSubmenu = null;

	$ul.html( '' );

	// Bootstrap hack for http://getbootstrap.com/components/#alerts-links
	$( '.alert a' ).each( function() {
		this.addClass( 'alert-link' );
	} );

	$( 'h1, h2, h3, h4, h5, h6' ).each( function() {
		if( this.is( '#start, h2:first-of-type' ) ) {
			output = output.replace( /{TITLE}/g, this.html().replace( /<a.+?>.+?<\/a>/gi, '' ) );
		} else {
			var depth = Number( this[ 0 ].name.substring( 1 ) ),
				html = '',
				name = this.html().replace( /<a.+?>.+?<\/a>/gi, '' );

			html = '<li><a href="#' + this.attr( 'id' ) + '">' + name + '</a></li>';

			if ( lastDepth ) {
				if ( lastDepth < depth ) {
					lastElem.append( '<ul class="unstyled"></ul>' );
					currentSubmenu = lastElem.children().last();
				} else if ( lastDepth > depth ) {
					currentSubmenu = null;
				}
			}

			if ( currentSubmenu ) {
				currentSubmenu.append( html );
			} else {
				$ul.append( html );
			}

			lastDepth = depth;
			lastElem = $ul.children().last();
		}
	} );

	if ( $ul.children().length > 0 ) {
		nav = nav.replace( '{NAV}', $ul.html() );
	} else {
		nav = '';
		offset = 2;
	}

	output = output.replace( '{NAV}', nav );
	output = output.replace( '{OFFSET}', offset );
	output = output.replace( '{CONTENT}', $.html() );
	output = output.replace( '{DISQUS}', tutorial.replace( '.tpl', '' ) );

	fs.writeFileSync( '../../' + tutorial.replace( 'tpl', 'html' ), output, 'utf8' );
} );

// building list of tutorials
var list = fs.readFileSync( './templates/index.tpl', 'utf8' ),
	tuts = require( '../tutslist' ),
	arts = require( '../artslist' ),
	response = '',
	artsr = '';

Object.keys( tuts ).forEach( function( t ) {
	var tut = tuts[ t ];

	response += '<dt class="list-group-item active">' + t + '</dt>';

	Object.keys( tut ).forEach( function( x ) {
		response += `<dd class="list-group-item">
			<a href="${tut[ x ]}.html" class="list-group-item-link">${x}</a>
			</dd>`;
	} );
} );

Object.keys( arts ).reverse().forEach( function( t ) {
	artsr += `<li class="list-group-item">
		<a href="${arts[ t ]}" class="list-group-item-link" rel="noopener noreferrer">${t}</a>
		</li>`;
} );

list = list.replace( '{LIST}', response );
list = list.replace( '{ARTS}', artsr );

fs.writeFileSync( '../../index.html', list, 'utf8' );
