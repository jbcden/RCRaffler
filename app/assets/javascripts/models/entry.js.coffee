class Raffler.Models.Entry extends Backbone.Model

  win: ->
    @winner.set(winner: true)
    @winner.save()
    @winner.trigger('highlight')
