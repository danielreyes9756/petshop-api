class User < ApplicationRecord
  # model association
  has_many :purchases, dependent: :destroy
  # validations
  validates_presence_of :name, :surname, :country, :province, :address, :ZIP, :phone, :email, :password
end
