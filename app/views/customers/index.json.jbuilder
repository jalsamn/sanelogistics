json.array!(@customers) do |customer|
  json.extract! customer, :id, :company, :address1, :address2, :city, :state, :zip, :phone, :contactname, :active
  json.url customer_url(customer, format: :json)
end
