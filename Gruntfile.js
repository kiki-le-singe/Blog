module.exports = function(grunt) {

  // Project configuration.
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),

    config: {
      paths : {
        app : 'front/app'
      }
    },

    clean: {
      pre: ['public/*'],
      post: ['tmp/*']
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
        dest: 'tmp/javascripts',
        ext: '.js'
      }
    },

    watch: {
      coffee : {
        files: ['<%= config.paths.app %>/**/*.coffee'],
        tasks: ['coffee-compile']
      }
    }

  });

  grunt.loadNpmTasks('grunt-contrib-coffee');
  grunt.loadNpmTasks('grunt-coffeelint');
  grunt.loadNpmTasks('grunt-contrib-clean');
  grunt.loadNpmTasks('grunt-contrib-watch');

  grunt.registerTask('coffee-compile', [
    'coffeelint',
    'coffee'
  ]);

  grunt.registerTask('live', ['watch']);
  // grunt.registerTask('test-clean', ['clean']);
};