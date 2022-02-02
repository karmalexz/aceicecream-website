class Product < ApplicationRecord
    has_and_belongs_to_many :specials
    has_many :line_items
end
