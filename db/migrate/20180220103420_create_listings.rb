class CreateListings < ActiveRecord::Migration[5.1]
  def change
    create_table :listings do |t|
      t.string :name
      t.string :city
      t.string :state
      t.string :country
      t.string :banner_image
      t.float :longitude
      t.float :latitude
      t.string :about_palce

      t.timestamps
    end
  end
end
