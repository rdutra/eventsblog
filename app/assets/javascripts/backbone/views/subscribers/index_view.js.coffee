Eventsblog.Views.Subscribers ||= {}

class Eventsblog.Views.Subscribers.IndexView extends Backbone.View
  template: JST["backbone/templates/subscribers/index"]

  initialize: () ->
    @options.subscribers.bind('reset', @addAll)

  addAll: () =>
    @options.subscribers.each(@addOne)

  addOne: (subscriber) =>
    view = new Eventsblog.Views.Subscribers.SubscriberView({model : subscriber})
    @$("tbody").append(view.render().el)

  render: =>
    $(@el).html(@template(subscribers: @options.subscribers.toJSON() ))
    @addAll()

    return this
