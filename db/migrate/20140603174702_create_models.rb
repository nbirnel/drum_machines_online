class CreateModels < ActiveRecord::Migration
  def change
    create_table :models do |t|
      t.string :name
      t.integer :default_channel
      t.boolean :channel_reassignable
      t.boolean :MIDI_in
      t.boolean :MIDI_out
      t.boolean :MIDI_through
      t.boolean :USB

      t.timestamps
    end
  end
end
