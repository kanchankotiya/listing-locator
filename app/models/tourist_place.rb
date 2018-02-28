class TouristPlace < ApplicationRecord

  validates :name, :city, :state, :country, :banner_image, :about_palce, :zip_code, presence: true 
  mount_uploader :banner_image, AvatarUploader
  has_many :images, as: :imageable
  mount_uploader :img_name, AvatarUploader
  belongs_to :touristplace_category, optional: true
  geocoded_by :address
  after_validation :geocode
   
  
  def address
    "#{self.city} #{self.state} #{self.zip_code} "
  end

end


