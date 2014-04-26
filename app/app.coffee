define [
  'backbone'
  'marionette'
  'views/header/Header'
  'views/article/ArticleListCollectionView'
  'collections/ArticleList'
], (Backbone,
  Marionette,
  HeaderView,
  ArticleListCollectionView,
  ArticleList) ->

  App = new Marionette.Application()
  ArticleList = new ArticleList()
  
  App.addRegions
    header: '#header'
    content: '#content'
    sidebar: '#sidebar'
    footer: '#footer'

  App.addInitializer () ->
    console.log 'DEBUG - App.addInitializer'

    ## Do this ##
    viewOptions =
      collection : ArticleList

    ### Not this, it is a TEST ###
    # viewOptions =
    #   collection : new Backbone.Collection(
    #     [
    #       {
    #         title : 'Default title'
    #         date : 'now'
    #         description : 'Description'
    #         author : 'Mickey'
    #       },
    #       {
    #         title : 'Default title'
    #         date : 'now'
    #         description : 'Description'
    #         author : 'Mickey'
    #       }
    #     ]
    #   )

    App.header.show new HeaderView()
    App.content.show new ArticleListCollectionView(viewOptions)

    ArticleList.fetch()

  # Return App
  App
