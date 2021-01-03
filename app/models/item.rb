class Item < ApplicationRecord
    has_many :categories
    has_many :animals
    has_many :sizes
    attr_accessor :category_elements, :animal_elements, :size_elements
end
