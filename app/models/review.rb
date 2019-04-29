class Review < ApplicationRecord
  belongs_to :restaurant

  validates_associated :restaurant
  #validate com range, utilizando o inclusion, determinando o value deve estar entre 1 e 5 
  validates :value, inclusion: 1..5
end
