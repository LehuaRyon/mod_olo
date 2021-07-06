class User < ApplicationRecord
  has_secure_password
  has_many :orders, dependent: :destroy
  has_many :pizzas, through: :orders
  validates :first_name, :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates_length_of :password, minimum: 6, too_short: "Please enter at least 6 characters"
end
