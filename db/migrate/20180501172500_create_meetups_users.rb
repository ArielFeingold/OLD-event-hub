class CreateMeetupsUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :meetups_users do |t|
      t.references :meetup, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
