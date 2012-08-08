window.Application = class Application extends Backbone.Router

  routes:
    '': 'index'

  index: ->
    simpleView  = new SimpleView()
    $('#main').append(simpleView.render().el)
