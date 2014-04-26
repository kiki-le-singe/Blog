define [
  'backbone'
  'marionette'
  'jquery'
  'underscore'
  'models/Article'
], (Backbone, Marionette, $, _, Article) ->
  'use strict'

  class ArticleList extends Backbone.Collection
    model: Article
    url: '/api/articles',

    initialize: ->
      console.log 'CLASS : ArticleListCollection - initialize'
