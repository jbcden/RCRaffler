class Raffler.Views.Entry extends Backbone.View
  
  tagName: 'li'

  template: JST['entries/entry']

  initialize: ->
    @model.on('change', @render, @)
    @model.on('highlight', @highlightWinner, @)

  highlightWinner: ->
    $('.winner').removeClass('highlight')
    @$('.winner').addClass('highlight')

  render: ->
    $(@el).html(@template(entry: @model))
    @
