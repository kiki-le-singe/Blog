#####################
# Require.js config #
#####################

require.config

  paths:
    jquery: 'libs/jquery/dist/jquery'
    underscore: 'libs/lodash/dist/lodash'
    backbone: 'libs/backbone/backbone'
    marionette: 'libs/backbone.marionette/lib/backbone.marionette'
    text: 'libs/requirejs-text/text'
    handlebars: 'libs/handlebars/handlebars'
    hbs: 'libs/requirejs-hbs/hbs'
    templates: 'views/templates'

  shim:
    underscore:
      exports: '_'

    backbone:
      deps: ['underscore', 'jquery']
      exports: 'Backbone'

    marionette:
      deps: ['backbone']
      exports: 'Backbone.Marionette'

    handlebars:
      exports: 'Handlebars'


require ['backbone', 'jquery', 'underscore', 'views/app'], \
(Backbone, $, _, AppView) ->
  console.log Backbone
  console.log $
  console.log _
  console.log 'mickey'

  new AppView()
