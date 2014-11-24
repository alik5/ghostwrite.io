json.array!(@letter_types) do |letter_type|
  json.extract! letter_type, :id, :name
  json.url letter_type_url(letter_type, format: :json)
end
