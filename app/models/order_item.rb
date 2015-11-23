class OrderItem < ActiveRecord::Base
  belongs_to :order_item_status
  belongs_to :order
end
