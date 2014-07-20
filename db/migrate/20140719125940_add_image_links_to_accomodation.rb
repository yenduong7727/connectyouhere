class AddImageLinksToAccomodation < ActiveRecord::Migration
  def change
    add_column :accomodations, :Imagelink1, :string
    add_column :accomodations, :Imagelink2, :string
    add_column :accomodations, :Imagelink3, :string
  end
end
