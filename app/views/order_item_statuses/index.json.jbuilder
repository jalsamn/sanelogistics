json.array!(@order_item_statuses) do |order_item_status|
  json.extract! order_item_status, :id, :name
  json.url order_item_status_url(order_item_status, format: :json)
end
