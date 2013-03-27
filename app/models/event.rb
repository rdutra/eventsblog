class Event < ActiveRecord::Base
  attr_accessible :description, :end_date, :location, :start_date, :title
end
