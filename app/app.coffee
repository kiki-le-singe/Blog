define [
  'marionette'
  'views/header/Header'
  'views/article/ArticleListCompositeView'
  'collections/ArticleList'
], (Marionette, HeaderView, ArticleListCompositeView, ArticleList) ->

  App = new Marionette.Application()
  ArticleList = new ArticleList()
  
  App.addRegions
    header: '#header'
    content: '#content'
    sidebar: '#sidebar'
    footer: '#footer'

  App.addInitializer () ->
    console.log 'DEBUG - App.addInitializer'

    viewOptions =
      collection : ArticleList

    App.header.show new HeaderView()
    App.content.show new ArticleListCompositeView(viewOptions)

    ArticleList.fetch()

  # Return App
  App
