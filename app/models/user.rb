class User < ApplicationRecord
  has_secure_password
  # VALIDATIONS
  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true

  # ASSOCIATIONS
  has_many :spots
  has_many :comments
  has_many :tricks
end
