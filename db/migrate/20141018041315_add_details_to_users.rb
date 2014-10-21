class AddDetailsToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :dob, :date
    add_column :users, :suburb, :string
    add_column :users, :address, :text
    add_column :users, :phone, :string
    add_column :users, :education, :string
    add_column :users, :details, :text
  end
end
