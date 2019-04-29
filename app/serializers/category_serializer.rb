class CategorySerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :title, :image_url
   
  #vai criar esse campo para ser devolvido no .json
  def image_url
    rails_blob_url(object.image)
  end
end
