class Subscriber < ActiveRecord::Base
  attr_accessible :email, :name, :phone

  has_many :event_subscribers
  has_many :events, :through => :event_subscribers
end
