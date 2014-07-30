json.array!(@individuals) do |individual|
  json.extract! individual, :id, :first_name, :last_name, :street1, :street2, :city, :state, :postalcode
  json.url individual_url(individual, format: :json)
end
