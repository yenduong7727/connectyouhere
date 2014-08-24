class ChangeClassificationInJobs < ActiveRecord::Migration
  def change
  	change_column :jobs, :classification,  :integer
  	change_table :jobs do |t|
  		t.rename :classification, :classification_id
	end
  end
end
