class Eventsblog.Models.Subscriber extends Backbone.Model
  paramRoot: 'subscriber'

  defaults:
    name: null
    email: null
    phone: null

class Eventsblog.Collections.SubscribersCollection extends Backbone.Collection
  model: Eventsblog.Models.Subscriber
  url: '/subscribers'
