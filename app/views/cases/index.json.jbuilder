json.array!(@cases) do |case|
  json.extract! case, :id, :product_id, :quantity_in_case, :expiration_date, :location_id, :case_type_id
  json.url case_url(case, format: :json)
end
