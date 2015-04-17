class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :staff_number
      t.string :name
      t.string :surname
      t.references :job_title, index: true
      t.references :department, index: true
      t.date :startdate
      t.date :finishdate
      t.boolean :active

      t.timestamps null: false
    end
    add_foreign_key :staffs, :job_titles
    add_foreign_key :staffs, :departments
  end
end
