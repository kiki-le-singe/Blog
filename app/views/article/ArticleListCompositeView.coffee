define [
  'marionette'
  'jquery'
  'underscore'
  'hbs!templates/article/article_list_composite_view'
  'views/article/ArticleSummaryItemView'
], (Marionette, $, _, articleListCompositeViewTpl, ArticleSummaryItemView) ->
  'use strict'

  class ArticleListCompositeView extends Marionette.CompositeView
    template: articleListCompositeViewTpl
    itemView: ArticleSummaryItemView
    itemViewContainer: '.articles-container'

    initialize: ->
      console.log 'CLASS : ArticleListView - initialize'
