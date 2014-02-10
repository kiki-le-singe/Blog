define [
  'backbone'
  'jquery'
  'lodash'
  'hbs!templates/header'
], (Backbone, $, _, headerTpl) ->
  'use strict'

  class AppView extends Backbone.View
    tagName: 'div'
    className: 'main-menu'

    initialize: ->
      console.log 'initialize'
      $('#menu').html(headerTpl { thing: 'Some string' })
