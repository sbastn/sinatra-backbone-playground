window.SimpleView = class SimpleView extends Backbone.View

  render: ->
    title = @.make('h1', {}, 'Hello from backbone')
    $(@el).html title
    @
