define [
  'marionette'
], (Marionette) ->
  'use strict'

  class IndexRouter extends Marionette.AppRouter
    appRoutes:
      "": "indexAction"
