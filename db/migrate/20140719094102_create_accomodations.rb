class CreateAccomodations < ActiveRecord::Migration
  def change
    create_table :accomodations do |t|
      t.text :title
      t.string :roomtype
      t.string :location
      t.integer :price
      t.integer :bond
      t.datetime :available
      t.integer :bedroom
      t.integer :bathroom
      t.text :description
      t.boolean :smoking
      t.string :contact_phone
      t.string :contact_name

      t.timestamps
    end
  end
end
