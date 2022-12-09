class Property < ApplicationRecord

    validates :title, presence: true
    validates :description, length: {minimum: 100}
    validates :price, numericality: {greater_than: 300000}
    validates :image_url, presence: true


    has_many :reviews, dependent: :destroy
end
