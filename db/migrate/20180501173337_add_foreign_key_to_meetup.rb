class AddForeignKeyToMeetup < ActiveRecord::Migration[5.2]
  def change
    add_column :meetups, :event_id, :integer
  end
end
