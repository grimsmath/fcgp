json.array!(@categories) do |category|
  json.extract! category, :id, :name, :enabled, :category_id
  json.url category_url(category, format: :json)
end
