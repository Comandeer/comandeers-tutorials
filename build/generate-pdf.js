const puppeteer = require( 'puppeteer' );
const { readdirSync } = require( 'fs' );
const pages = readdirSync( './tutorials' ).concat( readdirSync( './pages' ) );

async function generatePDF( browser, pages ) {
	const promises = [];

	pages.forEach( ( page ) => {
		const name = page.replace( '.tpl', '' );

		promises.push( ( async() => {
			const page = await browser.newPage();

			await page.goto( `http://localhost:8080/${ name }.html`, {
				waitUntil: 'load'
			} );
			await page.pdf( {
				path: `../public/${ name }.pdf`,
				format: 'Letter',
				margin: {
					top: '2.50cm',
					left: '2.50cm',
					bottom: '2.50cm',
					right: '2.50cm'
				}
			} );
		} )() );
	} );

	await Promise.all( promises );
}

( async() => {
	const browser = await puppeteer.launch();

	try {
		await generatePDF( browser, pages );
	} catch ( e ) {
		console.error( e );
	}

	await browser.close();
} )();
