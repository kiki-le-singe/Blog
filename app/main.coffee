#####################
# Require.js config #
#####################

require.config

  shim:
    lodash:
      exports: '_'

    backbone:
      deps: ['lodash', 'jquery']
      exports: 'Backbone'

    marionette:
      deps: ['backbone']
      exports: 'Backbone.Marionette'

    handlebars:
      exports: 'Handlebars'

  paths:
    jquery: 'libs/jquery/jquery'
    lodash: 'libs/lodash/dist/lodash'
    backbone: 'libs/backbone/backbone'
    marionette: 'libs/backbone.marionette/lib/backbone.marionette'
    text: 'libs/requirejs-text/text'
    handlebars: 'libs/handlebars/handlebars'
    hbs: 'libs/requirejs-hbs/hbs'
    templates: 'views/templates'


require ['backbone', 'jquery', 'lodash', 'views/app'], \
(Backbone, $, _, AppView) ->
  console.log Backbone
  console.log $
  console.log _
  console.log 'mickey'

  new AppView()
