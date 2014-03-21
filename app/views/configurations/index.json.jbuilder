json.array!(@configurations) do |configuration|
  json.extract! configuration, :id, :name, :active
  json.url configuration_url(configuration, format: :json)
end
