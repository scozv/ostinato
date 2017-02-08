var path = require("path");

module.exports = function (grunt) {
	grunt.loadNpmTasks('grunt-gitbook');
	grunt.loadNpmTasks('grunt-gh-pages');
	grunt.loadNpmTasks('grunt-contrib-clean');

	grunt.initConfig({
		'gitbook': {
			development: {
				input: "./"
				,github: "scozv/ostinato_404"
			}
		},
		'gh-pages': {
			options: {base: '_book'},
			src: ['**']
		},
		'clean': {
			files: '.grunt'
		}
	});

	grunt.registerTask('publish', ['gh-pages','clean']);
	// grunt.registerTask('default', 'gitbook');
};
