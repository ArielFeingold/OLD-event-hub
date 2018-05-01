class CreateMeetups < ActiveRecord::Migration[5.2]
  def change
    create_table :meetups do |t|
      t.string :name
      t.text :description
      t.string :meeting_location
      t.time :meeting_time

      t.timestamps
    end
  end
end
