const { join: joinPath } = require( 'path' );
const { readdirSync, readFileSync, writeFileSync } = require( 'fs' );

function convertToMD( txt ) {
	return txt.
			replace( /\[p\]/g, '\n' ).
			replace( /\[p=info\](.+?)\[\/p\]/g, '\n<div class="alert alert-info">\n\n$1\n\n</div>' ).
			replace( /\[p=warning\](.+?)\[\/p\]/gs, '\n<div class="alert alert-danger">\n\n$1\n\n</div>' ).
			replace( /\[\/p\]/g, '' ).
			replace( /\[h([1-6])\="?(.+?)"?\](.+?)\[\/h\1\]/g, '\n<h$1 id="$2">$3</h$1>' ).
			replace( /\[code=(.+?)\](.+?)\[\/code\]/gs, '\n```$1\n$2\n```' ).
			replace( /\[\/?tt\]/g, '`' ).
			replace( /\[q\](.+?)\[\/q\]/g, '<q>$1</q>').
			replace( /\[b\](.+?)\[\/b\]/g, '<b>$1</b>').
			replace( /\[i\](.+?)\[\/i\]/g, '<i>$1</i>').
			replace( /\[url=(.+?)\](.+?)\[\/url\]/g, '[$2]($1)' ).
			replace( /\[\/?list\]/g, '\n' ).
			replace( /[\t\r ]*?\[\*\]/g, '*' ).
			replace( /\[spoiler="(.+?)"\](.+?)\[\/spoiler\]/gs, '<details><summary>$1</summary>\n$2\n</details>' ).
			replace( /\[quote="(.+?)"\](.+?)\[\/quote\]/gs, '<blockquote>\n$2\n<footer><cite>$1</cite></footer></blockquote>' ).
			replace( /\[quote\](.+?)\[\/quote\]/gs, '<blockquote>\n$1\n</blockquote>' ).
			replace( /\[description\](.+?)\[\/description\]/g, '<description>$1</description>' );
}

function convertDir( dir ) {
	const pages = readdirSync( joinPath( __dirname, dir ) ).filter( ( file ) => {
		return file.endsWith( '.tpl' );
	} );

	pages.forEach( ( page ) => {
		const fileName = page.replace( '.tpl', '.md' );
		const content = readFileSync( joinPath( __dirname, dir, page ), 'utf-8' );
		const newContent = convertToMD( content );

		writeFileSync( joinPath( __dirname, dir, fileName ), newContent );
	} );
}

convertDir( 'tutorials' );
convertDir( 'pages' );
