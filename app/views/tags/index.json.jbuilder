json.array!(@tags) do |tag|
  json.extract! tag, :id, :name, :enabled
  json.url tag_url(tag, format: :json)
end
