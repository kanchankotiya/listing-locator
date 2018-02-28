class RemoveZipCodeFromListing < ActiveRecord::Migration[5.1]
  def change
    remove_column :listings, :zip_code, :string
  end
end
