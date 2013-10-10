class Raffler.Views.EntriesIndex extends Backbone.View

  events:
    'submit #new_entry': 'createEntry'

  template: JST['entries/index']

  initialize: ->
    @collection.on('reset', @render, this)
    @collection.on('add', @render, this)

  render: ->
    $(@el).html(@template(entries: @collection))
    this

  createEntry: (event) ->
    event.preventDefault()
    @collection.create name: $('#new_entry_name').val()
