json.array!(@notes) do |note|
  json.extract! note, :id, :c3, :asa_yamaha, :name, :freq, :sound
  json.url note_url(note, format: :json)
end
