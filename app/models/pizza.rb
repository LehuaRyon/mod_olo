class Pizza < ApplicationRecord
    has_many :orders, dependent: :destroy
    has_many :users, through: :orders
    validates :name, :ingredients, presence: :true, uniqueness: true
    validates :size, :price, presence: true
    validates_inclusion_of :size, in: %w(Mini Mod Mega), message: "%(value) is not a valid size"
    # validates_inclusion_of :price, in: %w(7.37 9.37 11.37), message: "%(value) is not a valid price"
        # when i tried to seed data, it did not like this validation, im thinkiing it doesn't take floats?
end
