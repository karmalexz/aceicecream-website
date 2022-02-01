class Product < ApplicationRecord
    has_and_belongs_to_many :specials
    belongs_to :line_items, optional: true
end
