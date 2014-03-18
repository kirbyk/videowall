json.array! @data.panel_datas do |json, pd|
  json.(pd, :id, :name)
  json.texts pd.texts do |json, text|
    json.(text, :id, :content)
  end
end
