class Category < ApplicationRecord
    has_many :restaurants
    
    #Validação de presença de um título na categoria
    validates :title, presence: true

    #Informa que uma categoria terá uma imagem associada
    has_one_attached :image
end
