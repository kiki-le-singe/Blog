define [
  'marionette'
  'jquery'
  'underscore'
  'hbs!templates/header/header'
], (Marionette, $, _, headerTpl) ->
  'use strict'

  class HeaderView extends Marionette.ItemView
    template: headerTpl
    tagName: 'div'
    className: 'main-menu'

    initialize: ->
      console.log 'initialize - HeaderView.initialize'
      # $('#menu').html(headerTpl {item1: 'Item 1', item2: 'Item 2', item3: 'Item 3'})
