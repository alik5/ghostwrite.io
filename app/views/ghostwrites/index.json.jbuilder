json.array!(@ghostwrites) do |ghostwrite|
  json.extract! ghostwrite, :id, :title, :string, :content, :text
  json.url ghostwrite_url(ghostwrite, format: :json)
end
