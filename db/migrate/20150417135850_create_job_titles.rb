class CreateJobTitles < ActiveRecord::Migration
  def change
    create_table :job_titles do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
