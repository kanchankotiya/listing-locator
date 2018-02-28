class ListingAmenity < ApplicationRecord
  #validations.....
  validates :name, presence: true
  belongs_to :listing
  belongs_to :amenity
end
