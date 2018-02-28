class CreateTouristPlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :tourist_places do |t|
      t.string :name
      t.string :city
      t.string :state
      t.string :country
      t.string :banner_image
      t.float :longitude
      t.float :latitude
      t.text :about_place

      t.timestamps
    end
  end
end
