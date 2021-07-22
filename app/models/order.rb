class Order < ApplicationRecord
  belongs_to :user
  belongs_to :pizza
  # accepts_nested_attributes_for :pizza
  validates :pickup_name, :special_instructions, :size, :pizza_id, presence: true
  # validates :special_instructions, allow_blank: true
    # when seeding data, allow_blank was not allowing seed
  validates_associated :pizza
  scope :order_by_created_at, -> {order(created_at: :desc)}
  # def self.order_by_created_at
  #   Order.order(created_at: :desc)
  # end

  def self.search_by_last_name(search)
    last_name = User.find_by(last_name: search)
    if last_name
      self.where(user_id: last_name)
    else
      Order.order_by_created_at
    end
  end

  def pizza_attributes=(attributes)
    pizza = Pizza.find_or_create_by(attributes)
    self.pizza = pizza if pizza.valid? || !self.pizza #== nil
  end 

end
