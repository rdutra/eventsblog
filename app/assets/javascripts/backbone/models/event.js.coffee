class Eventsblog.Models.Event extends Backbone.Model
  paramRoot: 'event'

  defaults:
    title: null
    description: null
    start_date: null
    end_date: null
    location: null

class Eventsblog.Collections.EventsCollection extends Backbone.Collection
  model: Eventsblog.Models.Event
  url: '/events'
