class PropertySerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :image_url, :price
end
