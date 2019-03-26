var fs = require( 'fs' ),
	tutDir = '../tutorials/',
	pagesDir = '../pages/',
	pageTemplate = fs.readFileSync( './templates/page.html', 'utf8' ),
	tutTemplate = fs.readFileSync( './templates/tutorial.html', 'utf8' ),
	parser = require('markdown-it')( {
		html: true,
		linkify: true
	} ),
	mila = require('markdown-it-link-attributes'),
	dom = require( 'cheerio' ),
	tutorials = fs.readdirSync( tutDir ),
	pages = fs.readdirSync( pagesDir ),
	pagesList = require( '../pageslist' ),
	siteMenu = '';

parser.use( mila, {
	attrs: {
		rel: 'noreferrer noopener'
	}
} );

function getBuilder( type = 'tutorial' ) {
	return function( page ) {
		var dir = type === 'tutorial' ? tutDir : pagesDir,
			content = fs.readFileSync( dir + page, 'utf8' ),
			output = type === 'tutorial' ? tutTemplate : pageTemplate,
			pageName = page.replace( /(\.html|\.md)$/, '' ),
			nav = `<nav class="sidebar col-md-4 well" aria-labelledby="toc-heading">
			<h2 class="sidebar-header" id="toc-heading">Spis treści</h2>
				<div class="sidebar-inner">
					<ul>
					{NAV}
					</ul>
				</div>
			</nav>`,
			offset = 0,
			$ul = dom.load( nav )( 'ul' ),
			content = parser.render( content );

		var $ = dom.load( content ),
			lastDepth = null,
			currentSubmenu = $ul;

		$ul.html( '' );

		// Bootstrap hack for http://getbootstrap.com/components/#alerts-links
		$( '.alert a' ).each( function() {
			this.addClass( 'alert-link' );
		} );

		$( 'description' ).each( function() {
			output = output.replace( /{DESCRIPTION}/g, this.text() );
			this.remove();
		} );

		$( 'h1, h2, h3, h4, h5, h6' ).each( function() {
			var depth = Number( this[ 0 ].name.substring( 1 ) ),
				lastElem = currentSubmenu.children( 'li' ).last(),
				html = '',
				name = this.html().replace( /<a.+?>.+?<\/a>/gi, '' );

			html = '<li><a href="#' + this.attr( 'id' ) + '">' + name + '</a></li>';

			if( this.is( '#start' ) ) {
				output = output.replace( /{TITLE}/g, this.html().replace( /<a.+?>.+?<\/a>/gi, '' ) );
				this.remove();
			}

			if ( lastDepth ) {
				if ( lastDepth < depth ) {
					currentSubmenu = $( '<ul></ul>' );

					lastElem.append( currentSubmenu );
				} else if ( lastDepth > depth ) {
					while ( lastDepth-- > depth ) {
						currentSubmenu = currentSubmenu.parent().parent( 'ul' );
					}
				}
			}

			currentSubmenu.append( html );
			lastDepth = depth;
		} );

		if ( $ul.children().length > 0 ) {
			nav = nav.replace( '{NAV}', $ul.html() );
		} else {
			nav = '';
			offset = 2;
		}

		output = output.replace( /{SLUG}/g, pageName );
		output = output.replace( /{MENU}/g, siteMenu );
		output = output.replace( '{NAV}', nav );
		output = output.replace( '{OFFSET}', offset );
		output = output.replace( '{HEADING_OFFSET}', offset || 4 );
		output = output.replace( '{CONTENT}', $.html() );
		output = output.replace( '{DISQUS}', pageName );

		fs.writeFileSync( `../../public/${ pageName }.html`, output, 'utf8' );
	}
}

// building site menu
Object.keys( pagesList ).forEach( function( page ) {
	var pageInfo = pagesList[ page ];
	siteMenu += `<li><a href="${ pageInfo }.html">${ page }</a></li>`
} );

tutorials.filter( ( tutorial ) => {
	return tutorial.endsWith( '.md' );
} ).forEach( getBuilder( 'tutorial' ) );
pages.filter( ( page ) => {
	return page.endsWith( '.md' );
} ).forEach( getBuilder( 'page' ) );

// building list of tutorials
var list = fs.readFileSync( './templates/index.html', 'utf8' ),
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
list = list.replace( '{MENU}', siteMenu );

fs.writeFileSync( '../../public/index.html', list, 'utf8' );
