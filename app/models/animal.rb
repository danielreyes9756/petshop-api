class Animal < ApplicationRecord
    has_many :animal_items
    has_many :items, through: :animal_items
end
