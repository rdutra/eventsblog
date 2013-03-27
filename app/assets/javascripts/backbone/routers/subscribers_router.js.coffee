class Eventsblog.Routers.SubscribersRouter extends Backbone.Router
  initialize: (options) ->
    @subscribers = new Eventsblog.Collections.SubscribersCollection()
    @subscribers.reset options.subscribers

  routes:
    "new"      : "newSubscriber"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newSubscriber: ->
    @view = new Eventsblog.Views.Subscribers.NewView(collection: @subscribers)
    $("#subscribers").html(@view.render().el)

  index: ->
    @view = new Eventsblog.Views.Subscribers.IndexView(subscribers: @subscribers)
    $("#subscribers").html(@view.render().el)

  show: (id) ->
    subscriber = @subscribers.get(id)

    @view = new Eventsblog.Views.Subscribers.ShowView(model: subscriber)
    $("#subscribers").html(@view.render().el)

  edit: (id) ->
    subscriber = @subscribers.get(id)

    @view = new Eventsblog.Views.Subscribers.EditView(model: subscriber)
    $("#subscribers").html(@view.render().el)
