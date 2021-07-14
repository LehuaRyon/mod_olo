class Order < ApplicationRecord
  belongs_to :user
  belongs_to :pizza #, optional: true
  # accepts_nested_attributes_for :pizza
  validates :pickup_name, :special_instructions, presence: true
  # validates :special_instructions, allow_blank: true
    # when seeding data, allow_blank was not allowing seed

  scope :order_by_created_at, -> {order(created_at: :desc)}
  # def self.order_by_created_at
  #   Order.order(created_at: :desc)
  # end
end
