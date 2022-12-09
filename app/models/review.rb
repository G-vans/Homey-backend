class Review < ApplicationRecord

    validates :comment, presence: true
    validates :property_id, presence: true
    validates :user_id, presence: true

    # Associations 
    belongs_to :user 
    belongs_to :property
end
