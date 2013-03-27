class CreateEventSubscribers < ActiveRecord::Migration
  def change
    create_table :event_subscribers do |t|
    	t.integer :event_id
    	t.integer :subscriber_id
      t.timestamps
    end
  end
end
