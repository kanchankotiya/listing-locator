class ListingType < ApplicationRecord
 validates :name, :icon, presence: true

 has_many :listings, dependent: :destroy 
 
 mount_uploader :icon, AvatarUploader
end
