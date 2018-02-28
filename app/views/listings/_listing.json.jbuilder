json.extract! listing, :id, :name, :city, :state, :country, :banner_image, :longitude, :latitude, :about_palce, :created_at, :updated_at
json.url listing_url(listing, format: :json)
