class AddListingTypeRefToListing < ActiveRecord::Migration[5.1]
  def change
    add_reference :listings, :listing_type, foreign_key: true
  end
end
