define [
  'marionette'
], (Marionette) ->

  App = new Marionette.Application()
  
  App.addRegions
    header: '#header'
    menu: '#menu'
    content: '#content'
    sidebar: '#sidebar'
    footer: '#footer'

  App.addInitializer () ->
    console.log 'DEBUG - App.addInitializer'

  # Return App
  App
