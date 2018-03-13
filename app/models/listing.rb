class Listing < ApplicationRecord
  #validations.....
  validates :name, :city, :state, :country, :banner_image, :about_listing, :address, :email, :phone_number, :website, :zip_code, presence: true 
  
  has_many :images, as: :imageable
  belongs_to :user
  # mount_uploader :img_name, AvatarUploader
  mount_uploader :banner_image, AvatarUploader
  belongs_to :listing_type, optional: true
  has_many :listing_amenities
  # has_many :opening_hours, dependent: :destroy
  has_many :opening_hours, inverse_of: :listing
  accepts_nested_attributes_for :opening_hours, reject_if: :all_blank, allow_destroy: true
  # accepts_nested_attributes_for :opening_hours, :opening_hours, allow_destroy: true
  has_many :amenities, through: :listing_amenities,:class_name => 'Amenity'
  accepts_nested_attributes_for :amenities
  accepts_nested_attributes_for :listing_amenities
  geocoded_by :address
  after_validation :geocode

  DAYS = ['Select Day','Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday']
  FROM = ['Opening Time','1AM', '2AM', '3AM', '4AM', '5AM', '6AM', '7AM', '8AM', '9AM', '10AM', '12AM', 'Closed']
  TO = ['Closing Time','1PM', '2PM', '3PM', '4PM', '5PM', '6PM', '7PM', '8PM', '9PM', '10PM', '12PM', 'Closed']

  def address
   "#{self.city} #{self.state} #{self.zip_code}"
  end
end
