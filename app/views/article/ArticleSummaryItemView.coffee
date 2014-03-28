define [
  'marionette'
  'jquery'
  'underscore'
  'hbs!templates/article/article_summary_item_view'
], (Marionette, $, _, articleSummaryItemViewTpl) ->
  'use strict'

  class ArticleSummaryItemView extends Marionette.ItemView
    template: articleSummaryItemViewTpl
    tagName : 'li',

    initialize: ->
      console.log 'CLASS : ArticleSummaryItemView - initialize'
