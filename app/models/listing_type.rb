class ListingType < ApplicationRecord
 has_many :listings, dependent: :destroy 
 mount_uploader :icon, AvatarUploader
 validates :name, presence: true
 validates :icon, presence: true
end
