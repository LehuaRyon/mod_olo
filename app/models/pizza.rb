class Pizza < ApplicationRecord
    has_many :orders, dependent: :destroy
    has_many :users, through: :orders
    validates :name, :ingredients, presence: :true, uniqueness: true
    validates :size, presence: true
    validates_inclusion_of :size, in: %w(Mini Mod Mega), message: "%(value) is not a valid size"
end
