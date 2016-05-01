module.exports = function (grunt) {

    "use strict";
    require("matchdep").filterDev("grunt-*").forEach(grunt.loadNpmTasks);

    grunt.initConfig({

        pkg: grunt.file.readJSON('package.json'),

        cssc: {
            build: {
                options: {
                    sortSelectors: true,
                    lineBreaks: true,
                    sortDeclarations: true,
                    consolidateViaDeclarations: false,
                    consolidateViaSelectors: false,
                    consolidateMediaQueries: false
                },
                files: {
                    'resources/css/site.css': 'resources/css/site.css'
                }
            }
        },

        cssmin: {
            build: {
                src: 'resources/css/site.css',
                dest: 'resources/compiled/<%= pkg.name %>-app.min.css'
            }
        },

        sass: {
            build: {
                files: {
                    'resources/css/site.css': 'resources/sass/site.scss',
                    'resources/css/components/colorbox.css': 'resources/sass/components/colorbox.scss',
                    'resources/css/components/site_forms.css': 'resources/sass/components/site_forms.scss'

                }
            }
        },

        watch: {

            js: {
                files: ['resources/js/<%= pkg.name %>-app.js'],
                tasks: ['uglify']
            },
            css: {
                files: ['resources/sass/**/*.scss'],
                tasks: ['buildcss']
            },
            livereload: {
                files: ['*.jsp', 'resources/css/*.css', 'resources/js/*.js'],
                options: {
                    livereload: true
                }
            }
        },

        uglify: {
            build: {
                files: {
                    'resources/compiled/<%= pkg.name %>-app.min.js': [
                        'resources/js/site.js'


                    ]
                }
            }
        }

    });


    // These plugins provide necessary tasks.
    grunt.loadNpmTasks('grunt-contrib-jshint');
    grunt.loadNpmTasks('grunt-contrib-sass');
    grunt.loadNpmTasks('grunt-cssc');
    grunt.loadNpmTasks('grunt-contrib-cssmin');
    grunt.loadNpmTasks('grunt-contrib-uglify');
    grunt.loadNpmTasks('grunt-contrib-watch');

    grunt.registerTask('default', ['sass', 'uglify', 'cssc', 'cssmin']);
    grunt.registerTask('buildcss', ['sass', 'cssc', 'cssmin']);

};