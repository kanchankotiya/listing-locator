class AddIconToListingTypes < ActiveRecord::Migration[5.1]
  def change
    add_column :listing_types, :icon, :string
  end
end
