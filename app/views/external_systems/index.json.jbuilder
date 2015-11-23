json.array!(@external_systems) do |external_system|
  json.extract! external_system, :id, :name
  json.url external_system_url(external_system, format: :json)
end
