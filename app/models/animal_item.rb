class AnimalItem < ApplicationRecord
  belongs_to :item
  belongs_to :animal
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :stock, presence: true
  validates :category_elements: [], presence: true
  validates :animal_elements: [], presence: true
  validates :size_elements: [], presence: true
end
