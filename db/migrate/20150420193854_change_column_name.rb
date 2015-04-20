class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :s_histories, :hdate, :date
  end
end
