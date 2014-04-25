define [
  'marionette'
  'jquery'
  'underscore'
  'templates'
], (Marionette, $, _, templates) ->
  'use strict'

  class ArticleSummaryItemView extends Marionette.ItemView
    template: templates.articleSummaryItemView
    tagName : 'li',

    initialize: ->
      console.log 'CLASS : ArticleSummaryItemView - initialize'
