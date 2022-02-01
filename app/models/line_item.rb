class LineItem < ApplicationRecord
    has_many :products 
    belongs_to :carts,  optional: true
    belongs_to :user, optional: true
    def total_price 
        price * quantity
    end 
end
