class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :c3
      t.string :asa_yamaha
      t.integer :key_num
      t.float :freq

      t.timestamps
    end
  end
end
