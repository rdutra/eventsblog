Eventsblog.Views.Subscribers ||= {}

class Eventsblog.Views.Subscribers.ShowView extends Backbone.View
  template: JST["backbone/templates/subscribers/show"]

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
