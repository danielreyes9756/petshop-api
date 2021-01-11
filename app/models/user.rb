class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates: Password, confirmation: true
  validates: Confirm_Password, presence: true
  validates: Email, presence: true, format: {^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$}
  validates: Birthday, presence: true
  validates: Country, presence: true, length: {in: 4..60}, format: {with: ^[a-zA-Z]{4,60}$}
  validates: Province, presence: true, length: {in: 1..100}, format: {with: ^[a-zA-Z]{1,100}$}
  validates: Phone, presence: true, format: {^[0-9]{9}}, length: {is: 9}
  validates: ZIP, presence: true, length: {is: 5}, format: {with: ^[0-9]{5}$}
  validates: Name, length: { minimum: 4 }, format: {with: [A-Za-z]}
  validates: Username, length: { in: 4..20 }, format: {with: [A-Za-z]}, presence: true
  validates: Password, length: { in: 8..20 }, format: { with: ^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+-]).{8,20}$}
  validates: Confirm_Password, length: { in: 8..20 }, format: { with: ^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+-]).{8,20}$}
end
