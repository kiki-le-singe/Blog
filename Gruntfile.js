module.exports = function(grunt) {

  require('load-grunt-tasks')(grunt);

  // Project configuration.
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),

    config: {
      paths : {
        app : 'app',
        tpl : '<%= config.paths.app %>/views/templates'
      }
    },

    clean: {
      all: {
        src: ['public/css/*', 'public/js/*', '!public/js/libs/**']
      }
    },

    coffeelint: {
      options: {
        max_line_length: {
          value: 79,
          level: "warn"
        },
        no_trailing_whitespace: {
          level: "error"
        }
      },
      app: ['<%= config.paths.app %>/**/*.coffee']
    },

    coffee: {
      dev: {
        expand: true,
        cwd: '<%= config.paths.app %>',
        src: ['**/*.coffee'],
        dest: 'public/js',
        ext: '.js'
      }
    },

    watch: {
      options: {
        spawn: false
      },
      coffee : {
        files: ['<%= config.paths.app %>/**/*.coffee'],
        tasks: ['coffee-compile']
      },
      handlebars : {
        files: ['<%= config.paths.tpl %>/**/*.hbs'],
        tasks: ['hbs-copy']
      }
      // ,
      // handlebars : {
      //   files: ['<%= config.paths.tpl %>/**/*.hbs'],
      //   tasks: ['hbs-compile']
      // }
    },

    copy: {
      hbs: {
        expand: true,
        cwd: '<%= config.paths.tpl %>/',
        src: ['**'], 
        dest: 'public/js/views/templates'
      }
    },

    open: {
      dev: {
        path: 'http://localhost:8080/'
      }
    },

    express: {
      dev: {
        options: {
          script: 'server.js',
          // Override node env's PORT
          port: 8080,
        }
      }
    }

    // handlebars: {
    //   compile: {
    //     options: {
    //       namespace: 'JST'
    //     },
    //     src: ['**/*.hbs'],
    //     dest: '<%= config.paths.tmp.tpl %>/templates.js'
    //   }
    // },

    // handlebars: {
    //   compile: {
    //     options: {
    //       namespace: 'JST'
    //     },
    //     expand: true,
    //     cwd: '<%= config.paths.tpl %>',
    //     src: ['**/*.hbs'],
    //     dest: '<%= config.paths.tmp.javascripts %>/views/templates',
    //     ext: '.tmpl.js'
    //   }
    // },

    // requirejs: {
    //   compile: {
    //     options: {
    //       name: "main",
    //       baseUrl: "<%= config.paths.tmp.javascripts %>",
    //       mainConfigFile: "<%= config.paths.tmp.javascripts %>/main.js",
    //       out: "public/js/main.js"
    //     }
    //   }
    // }

  });

  grunt.registerTask('coffee-compile', [
    'coffeelint',
    'coffee'
  ]);
  grunt.registerTask('hbs-compile', ['handlebars']);
  grunt.registerTask('hbs-copy', ['copy:hbs']);
  grunt.registerTask('serve', [
    // 'clean:all',
    'express:dev', // start server
    'open:dev', // open app in the default browser
    'watch'
  ]);

  grunt.registerTask('build', [
    'clean:all',
    'coffee-compile',
    'hbs-copy'
  ]);
};