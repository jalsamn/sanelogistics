json.array!(@settings) do |setting|
  json.extract! setting, :id, :setting, :setting_value
  json.url setting_url(setting, format: :json)
end
