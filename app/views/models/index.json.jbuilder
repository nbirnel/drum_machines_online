json.array!(@models) do |model|
  json.extract! model, :id, :name, :default_channel, :channel_reassignable, :MIDI_in, :MIDI_out, :MIDI_through, :USB
  json.url model_url(model, format: :json)
end
