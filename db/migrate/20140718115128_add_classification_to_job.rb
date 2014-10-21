class AddClassificationToJob < ActiveRecord::Migration
  def change
    add_column :jobs, :classification_id, :integer
  end
end
