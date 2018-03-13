class AddFieldToListing < ActiveRecord::Migration[5.1]
  def change
    add_column :listings, :featured, :boolean
  end
end
