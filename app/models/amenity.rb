class Amenity < ApplicationRecord
  has_many :listing_amenities
  has_many :listings, through: :listing_amenities
  validates :amenity_icon, presence: true
  validates :amenity_name, presence: true
  
end
