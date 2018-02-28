class Listing < ApplicationRecord
  #validations.....
  validates :name, :city, :state, :country, :banner_image, :about_palce, :address, :email, :phone_number, :website, :zip_code, presence: true 
  
  has_many :images, as: :imageable
  mount_uploader :banner_image, AvatarUploader
  belongs_to :listing_type, optional: true
  has_many :listing_amenities
  has_many :amenities, through: :listing_amenities,:class_name => 'Amenity'
  accepts_nested_attributes_for :amenities
  accepts_nested_attributes_for :listing_amenities

  geocoded_by :address
  after_validation :geocode
  

  def address
   "#{self.city} #{self.state} #{self.zip_code}"
  end
end
