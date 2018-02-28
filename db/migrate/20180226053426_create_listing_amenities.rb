class CreateListingAmenities < ActiveRecord::Migration[5.1]
  def change
    create_table :listing_amenities do |t|

      t.timestamps
    end
  end
end
