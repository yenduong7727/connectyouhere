class CreateUserJobCriteria < ActiveRecord::Migration
  def change
    create_table :user_job_criteria	 do |t|
      t.integer :user_id
      t.string :classification
      t.string :categories

      t.timestamps
    end
  end
end
