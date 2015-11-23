class Product < ActiveRecord::Base
  belongs_to :customer
  has_many :cases
end
