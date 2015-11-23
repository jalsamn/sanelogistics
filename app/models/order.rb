class Order < ActiveRecord::Base
    has_many :order_items
    belongs_to :external_system
    belongs_to :order_status
    belongs_to :customer
end
