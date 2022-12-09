class PropertyReviewSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :image_url, :price, :size
  has_many :reviews, serializer: ReviewUserSerializer
end
