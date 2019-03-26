import minify from 'rollup-plugin-babel-minify';

export default {
	input: `${__dirname}/js/main.js`,
	plugins: [
		minify()
	],
	output: {
		sourcemap: true,
		format: 'iife',
		file: `${__dirname}/../../public/js/main.js`
	}
};
