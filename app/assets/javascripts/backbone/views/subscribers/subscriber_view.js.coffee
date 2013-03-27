Eventsblog.Views.Subscribers ||= {}

class Eventsblog.Views.Subscribers.SubscriberView extends Backbone.View
  template: JST["backbone/templates/subscribers/subscriber"]

  events:
    "click .destroy" : "destroy"

  tagName: "tr"

  destroy: () ->
    @model.destroy()
    this.remove()

    return false

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
