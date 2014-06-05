class AddSoundToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :sound, :string
  end
end
