class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.references :staff, index: true
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :profiles, :staffs
    add_foreign_key :profiles, :users
  end
end
