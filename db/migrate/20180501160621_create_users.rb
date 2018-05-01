class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.text :about
      t.date :birthday
      t.string :username
      t.string :password_digets

      t.timestamps
    end
  end
end
