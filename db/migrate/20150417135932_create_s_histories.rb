class CreateSHistories < ActiveRecord::Migration
  def change
    create_table :s_histories do |t|
      t.references :staff, index: true
      t.date :hdate
      t.references :type_ent, index: true
      t.integer :ndays
      t.string :observation

      t.timestamps null: false
    end
    add_foreign_key :s_histories, :staffs
    add_foreign_key :s_histories, :type_ents
  end
end
