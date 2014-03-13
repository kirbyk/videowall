json.array!(@panels) do |panel|
  json.extract! panel, :id, :name, :width, :height, :content, :active
  json.url panel_url(panel, format: :json)
end
