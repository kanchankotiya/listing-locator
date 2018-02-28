class CreateAmenities < ActiveRecord::Migration[5.1]
  def change
    create_table :amenities do |t|
      t.string :amenity_icon
      t.string :amenity_name

      t.timestamps
    end
  end
end
