json.array!(@panel_datas) do |panel_data|
  json.extract! panel_data, :id, :name, :panel_id
  json.url panel_data_url(panel_data, format: :json)
end
