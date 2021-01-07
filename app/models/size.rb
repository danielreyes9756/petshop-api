class Size < ApplicationRecord
    has_many :size_items
    has_many :items, through: :size_items
end
