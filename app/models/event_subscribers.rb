class EventSubscriber < ActiveRecord::Base

	belongs_to  :event
	belongs_to	:subscribers
  # attr_accessible :title, :body
end
