class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.integer :event_day
      t.integer :event_month
      t.integer :event_year
      t.integer :artist_id
      t.integer :venue_id

      t.timestamps
    end
  end
end
