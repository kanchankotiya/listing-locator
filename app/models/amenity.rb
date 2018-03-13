class Amenity < ApplicationRecord
  validates :amenity_icon, :amenity_name, presence: true

  has_many :listing_amenities

  has_many :listings, through: :listing_amenities 
  
end
