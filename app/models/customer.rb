
class Customer < ActiveRecord::Base
    require 'csv'

    has_many :products
    has_many :orders
    
    def self.to_csv(options = {})
      CSV.generate(options) do |csv|
        csv << column_names
        all.each do |customer|
          csv << customer.attributes.values_at(*column_names)
        end
      end
    end
    
    def self.import(file)
        CSV.foreach(file.path, headers: true) do |row|
    
          customer_hash = row.to_hash # exclude the price field
          customer = Customer.where(id: customer_hash["id"])
    
          if customer.count == 1
            customer.first.update_attributes(customer_hash)
          else
            Customer.create!(customer_hash)
          end # end if !product.nil?
        end # end CSV.foreach
    end # end self.import(file)
    
end
