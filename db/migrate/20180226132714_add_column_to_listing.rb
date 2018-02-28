class AddColumnToListing < ActiveRecord::Migration[5.1]
  def change
    add_column :listings, :address, :string
    add_column :listings, :email, :string
    add_column :listings, :phone_number, :string
    add_column :listings, :website, :string
    add_column :listings, :zip_code, :string
  end
end
