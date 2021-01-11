class Animal < ApplicationRecord
    has_many :animal_items
    has_many :items, through: :animal_items
    has_one_attached :banner
    validates :title, presence: true
    validates :color, presence: true
    validates :banner, presence: true
end
