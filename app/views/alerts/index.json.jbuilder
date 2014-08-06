json.array!(@alerts) do |alert|
  json.extract! alert, :id, :title, :message, :begins, :ends
  json.url alert_url(alert, format: :json)
end
