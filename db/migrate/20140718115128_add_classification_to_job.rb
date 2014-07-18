class AddClassificationToJob < ActiveRecord::Migration
  def change
    add_column :jobs, :classification, :string
  end
end
