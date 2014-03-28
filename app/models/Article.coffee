define [
  'backbone'
  'marionette'
  'jquery'
  'underscore'
  'models/Article'
], (Backbone, Marionette, $, _, Article) ->
  'use strict'

  class Article extends Backbone.Model
    defaults:
      title : 'Default title'
      date : 'now'
      description : 'Description'
      author : 'Mickey'

    idAttribute : 'id'

    initialize: ->
      console.log 'CLASS : ArticleModel - initialize'
