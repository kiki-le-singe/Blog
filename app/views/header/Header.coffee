define [
  'marionette'
  'jquery'
  'underscore'
  'templates'
], (Marionette, $, _, templates) ->
  'use strict'

  class HeaderView extends Marionette.ItemView
    template: templates.header
    tagName: 'div'
    className: 'main-menu'

    initialize: ->
      console.log 'CLASS : HeaderView - initialize'
      # $('#menu').html(headerTpl \
      #  {item1: 'Item 1', item2: 'Item 2', item3: 'Item 3'})
