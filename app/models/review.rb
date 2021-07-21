class Review < ApplicationRecord
    validates :stars, :content, presence: true
    validates :stars, numericality: { less_than_or_equal_to: 5, greater_than: 0, only_integer: true }
    belongs_to :pizza
    belongs_to :reviewer, class_name: "User"

    def self.average_star_rating
        average(:stars)
    end
end
