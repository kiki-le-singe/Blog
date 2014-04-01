define [
  'marionette'
  'jquery'
  'underscore'
  'views/article/ArticleSummaryItemView'
], (Marionette, $, _, ArticleSummaryItemView) ->
  'use strict'

  class ArticleListCollectionView extends Marionette.CollectionView
    tagName: 'ul'
    itemView: ArticleSummaryItemView

    ### TESTS Event ###
    itemEvents:
      "render": ->
        console.log 'mickey'

    initialize: ->
      console.log 'CLASS : ArticleListView - initialize'
