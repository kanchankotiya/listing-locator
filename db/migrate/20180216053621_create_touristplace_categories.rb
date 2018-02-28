class CreateTouristplaceCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :touristplace_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
