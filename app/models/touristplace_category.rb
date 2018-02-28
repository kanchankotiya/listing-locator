class TouristplaceCategory < ApplicationRecord
  has_many :images, as: :imageable
  has_many :tourist_places, dependent: :destroy
  accepts_nested_attributes_for :tourist_places, reject_if: :all_blank, allow_destroy: true
end
