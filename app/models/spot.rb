class Spot < ApplicationRecord
  # ASSOCIATIONS
  belongs_to :user
  has_many :comments
  has_many :tricks
  #VALIDATIONS

end
