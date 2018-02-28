class ListingAmenity < ApplicationRecord
  belongs_to :listing
  belongs_to :amenity
  #validations.....
  validates :name, presence: true
end
