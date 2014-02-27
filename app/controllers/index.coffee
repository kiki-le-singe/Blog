define [
  'marionette'
], (Marionette) ->
  'use strict'

  class IndexController extends Marionette.Controller

    initialize: (options) ->
      console.log 'CLASS : IndexController - initialize'

    indexAction: (param) ->
      console.log 'CLASS : IndexController - indexAction'
