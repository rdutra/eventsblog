class Event < ActiveRecord::Base
  attr_accessible :description, :end_date, :location, :start_date, :title

  has_many  :event_subscribers
  has_many  :subscribers, :through => :event_subscribers

end
