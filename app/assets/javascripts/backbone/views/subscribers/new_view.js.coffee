Eventsblog.Views.Subscribers ||= {}

class Eventsblog.Views.Subscribers.NewView extends Backbone.View
  template: JST["backbone/templates/subscribers/new"]

  events:
    "submit #new-subscriber": "save"

  constructor: (options) ->
    super(options)
    @model = new @collection.model()

    @model.bind("change:errors", () =>
      this.render()
    )

  save: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.unset("errors")

    @collection.create(@model.toJSON(),
      success: (subscriber) =>
        @model = subscriber
        window.location.hash = "/#{@model.id}"

      error: (subscriber, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render: ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
