class AddAmenityRefToListingAmenities < ActiveRecord::Migration[5.1]
  def change
    add_reference :listing_amenities, :amenity, foreign_key: true
  end
end
