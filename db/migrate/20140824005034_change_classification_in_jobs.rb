class ChangeClassificationInJobs < ActiveRecord::Migration
  def change
  	alter
  	change_column :jobs, :classification, 'integer USING CAST(classification AS integer)'
  	change_table :jobs do |t|
  		t.rename :classification, :classification_id
	end
  end
end
