json.array!(@order_items) do |order_item|
  json.extract! order_item, :id, :upc, :quantity, :order_item_status_id, :order_id, :quantity_picked
  json.url order_item_url(order_item, format: :json)
end
