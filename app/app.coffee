define [
  'marionette'
  'views/header/Header'
], (Marionette, Header) ->

  App = new Marionette.Application()
  
  App.addRegions
    header: '#header'
    content: '#content'
    sidebar: '#sidebar'
    footer: '#footer'

  App.addInitializer () ->
    console.log 'DEBUG - App.addInitializer'
    App.header.show new Header()

  # Return App
  App
