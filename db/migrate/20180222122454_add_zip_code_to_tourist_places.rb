class AddZipCodeToTouristPlaces < ActiveRecord::Migration[5.1]
  def change
    add_column :tourist_places, :zip_code, :string
  end
end
