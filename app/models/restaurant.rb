class Restaurant < ApplicationRecord
  belongs_to :category
  has_many :product_categories
  has_many :orders
  has_many :reviews

  validates_associated :category
  validates :name, presence: true
  validates :status, presence: true
  validates :delivery_tax, presence: true 
  validates :city, presence: true
  validates :street, presence: true

  #Enumeração criada para o status
  enum status: { closed: 0, open: 1 }

  has_one_attached :image

end
