Eventsblog.Views.Subscribers ||= {}

class Eventsblog.Views.Subscribers.EditView extends Backbone.View
  template : JST["backbone/templates/subscribers/edit"]

  events :
    "submit #edit-subscriber" : "update"

  update : (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success : (subscriber) =>
        @model = subscriber
        window.location.hash = "/#{@model.id}"
    )

  render : ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
