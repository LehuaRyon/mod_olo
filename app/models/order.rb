class Order < ApplicationRecord
  belongs_to :user
  belongs_to :pizza
  accepts_nested_attributes_for :user
  accepts_nested_attributes_for :pizza
  validates :pickup_name, :special_instructions, presence: true
  # validates :special_instructions, allow_blank: true
    # when seeding data, allow_blank was not allowing seed
end
