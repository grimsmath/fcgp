json.array!(@vendors) do |vendor|
  json.extract! vendor, :id, :name, :street1, :street2, :city, :state, :postalcode, :description
  json.url vendor_url(vendor, format: :json)
end
