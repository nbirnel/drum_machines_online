class FixKeyNumName < ActiveRecord::Migration
  def change
    rename_column :notes, :key_num, :name
  end
end
