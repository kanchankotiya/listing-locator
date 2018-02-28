class TouristPlace < ApplicationRecord
  mount_uploader :banner_image, AvatarUploader
  has_many :images, as: :imageable
  mount_uploader :img_name, AvatarUploader
  belongs_to :touristplace_category, optional: true
  geocoded_by :address
  after_validation :geocode
  #validations.....
  validates :name, presence: true
  validates :city, presence: true 
  validates :state, presence: true 
  validates :country, presence: true
  validates :banner_image, presence: true 
  validates :about_palce, presence: true 
  validates :longitude, presence: true  
  validates :latitude, presence: true
  validates :zip_code, presence: true 
  
    def address
     "#{self.city} #{self.state} #{self.zip_code} "
    end
end


