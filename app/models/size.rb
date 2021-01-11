class Size < ApplicationRecord
    has_many :size_items
    has_many :items, through: :size_items
    validates :title, presence: true
    validates :color, presence: true
end
