class OrderLineItem < ApplicationRecord
    belongs_to :order optional: true
end
