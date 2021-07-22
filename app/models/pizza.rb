class Pizza < ApplicationRecord
    has_many :orders, dependent: :destroy
    has_many :users, through: :orders
    has_many :reviews
    has_many :reviewers, through: :reviews, source: :reviewer
    has_one_attached :image
    validates :name, presence: true, uniqueness: true
    validates :ingredients, presence: true
    scope :search_by_pizza_name, -> (search) {where("name LIKE ?", search)}
    # def self.search_by_pizza_name(search)
    #     name = self.find_by_name(search)
    #     if name
    #         self.where("name LIKE ?", search)
    #     else
    #         self.all
    #     end
    # end

    def name_and_ingredients
        "#{name} - #{ingredients}"
    end
end
