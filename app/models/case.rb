class Case < ActiveRecord::Base
  belongs_to :product
  belongs_to :location
  belongs_to :case_type
end
