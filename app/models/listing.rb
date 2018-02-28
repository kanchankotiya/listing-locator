class Listing < ApplicationRecord
  has_many :images, as: :imageable
  mount_uploader :banner_image, AvatarUploader
  mount_uploader :img_name, AvatarUploader
  belongs_to :listing_type, optional: true
  has_many :listing_amenities
  has_many :amenities, through: :listing_amenities,:class_name => 'Amenity'
  accepts_nested_attributes_for :amenities
  accepts_nested_attributes_for :listing_amenities

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
    validates :address, presence: true  
    validates :email, presence: true 
    validates :phone_number, presence: true 
    validates :website, presence: true 
    validates :zip_code, presence: true 

  
    def address
     "#{self.city} #{self.state} #{self.name}"
    end
end
