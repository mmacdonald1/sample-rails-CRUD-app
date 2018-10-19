class Pet < ApplicationRecord
  has_many :adoptions
  has_many :owners, through: :adoptions 
end
