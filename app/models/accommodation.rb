class Accommodation < ApplicationRecord
  has_many :images, as: :imageable
  mount_uploader :img_name, AvatarUploader
  geocoded_by :address
  after_validation :geocode
end
