json.array!(@addresses) do |address|
  json.extract! address, :id, :street_1, :street_2, :city, :state_id, :postal_code
  json.url address_url(address, format: :json)
end
