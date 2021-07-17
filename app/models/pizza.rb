class Pizza < ApplicationRecord
    has_many :orders, dependent: :destroy
    has_many :users, through: :orders
    validates :name, :ingredients, :size, presence: true
    # can have same name w/same ingredients but not same size for same name, figure out validation
    scope :search_by_pizza_name, -> (search) {where("name LIKE ?", search)}
    # def self.search_by_pizza_name(search)
    #     name = self.find_by_name(search)
    #     if name
    #         self.where("name LIKE ?", search)
    #     else
    #         self.all
    #     end
    # end
end
