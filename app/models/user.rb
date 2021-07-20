class User < ApplicationRecord
  has_secure_password
  has_many :orders, dependent: :destroy
  has_many :pizzas, through: :orders
  validates :first_name, :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates_length_of :password, minimum: 6, too_short: "Please enter at least 6 characters"

  def self.from_google_omniauth(auth)
    find_or_create_by(uid: auth[:uid]) do |u|
      u.first_name = auth[:info][:first_name]
      u.last_name = auth[:info][:last_name]
      u.email = auth[:info][:email]
      u.password = SecureRandom.hex(10)
    end
  end

end
