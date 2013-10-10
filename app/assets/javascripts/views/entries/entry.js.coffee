class Raffler.Views.Entry extends Backbone.View
  
  tagName: 'li'

  template: JST['entries/entry']

  events:
    'click': 'showEntry'

  initialize: ->
    @model.on('change', @render, @)
    @model.on('highlight', @highlightWinner, @)

  showEntry: ->
    Backbone.history.navigate("entries/#{@model.get('id')}", true)

  highlightWinner: ->
    $('.winner').removeClass('highlight')
    @$('.winner').addClass('highlight')

  render: ->
    $(@el).html(@template(entry: @model))
    @
