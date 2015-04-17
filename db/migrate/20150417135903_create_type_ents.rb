class CreateTypeEnts < ActiveRecord::Migration
  def change
    create_table :type_ents do |t|
      t.string :initial
      t.string :description

      t.timestamps null: false
    end
  end
end
