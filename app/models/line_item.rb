class LineItem < ApplicationRecord
    belongs_to :product, optional: true 
    belongs_to :cart,  optional: true
    belongs_to :user, optional: true
    belongs_to :order, optional: true
    def total_price 
        self.product.price * quantity
    end 
end
