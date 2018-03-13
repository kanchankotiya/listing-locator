class CreateAccommodations < ActiveRecord::Migration[5.1]
  def change
    create_table :accommodations do |t|
      t.string :name
      t.string :city
      t.string :state
      t.string :country
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
