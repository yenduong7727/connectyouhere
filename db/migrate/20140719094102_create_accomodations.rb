class CreateAccomodations < ActiveRecord::Migration
  def change
    create_table :accomodations do |t|
      t.string :roomtype
      t.string :location
      t.integer :price
      t.integer :bond
      t.datetime :available
      t.text :description
      t.boolean :smoking
      t.string :contact_phone
      t.string :contact_name
      t.datetime :closed_at
      t.integer  :user_id
      t.timestamps
    end
  end
end
