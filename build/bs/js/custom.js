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
} catch( err ) {}

$( 'nav' ).on( 'affix.bs.affix', function() {
	$( '.content' ).removeClass( 'col-md-offset-0' ).addClass( 'col-md-offset-4' );
} ).on( 'affix-top.bs.affix affix-bottom.bs.affix', function() {
	$( '.content' ).removeClass( 'col-md-offset-4' );
} ).affix( {
	offset: {
		top: function() {
			return ( this.top = $( '.navbar-fixed-top' ).outerHeight( true ) + 10 );
		},
		bottom: function () {
			return ( this.bottom = $( '.site-footer' ).outerHeight( true ) + 10 );
		}
	}
} );

var isPrismNeeded = !!document.querySelector( 'pre > code' );

if ( isPrismNeeded ) {
	var script = document.createElement( 'script' );
	script.src = '/js/prism.js';
	document.body.appendChild( script );

	var link = document.createElement( 'link' );
	link.rel = 'stylesheet';
	link.href = '/css/prism.css';
	document.head.appendChild( link );
}

var details = Array.prototype.slice.call( document.querySelectorAll( 'details' ) );

window.addEventListener( 'beforeprint', function() {
	details.forEach( function( detail ) {
		detail.setAttribute( 'data-open', detail.hasAttribute( 'open' ) );
		detail.setAttribute( 'open', 'open' );
	} );
} );

window.addEventListener( 'afterprint', function() {
	details.forEach( function( detail ) {
		var isOpen = detail.getAttribute( 'data-open' ) && detail.getAttribute( 'data-open' ) === 'true';

		if ( !isOpen ) {
			detail.removeAttribute( 'open' );
		}
	} );
} );
