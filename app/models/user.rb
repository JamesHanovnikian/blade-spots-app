class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  # ASSOCIATIONS
  has_many :spots
  has_many :comments
  has_many :tricks
end
