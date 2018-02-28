json.extract! tourist_place, :id, :name, :city, :state, :country, :banner_image, :longitude, :latitude, :about_place, :created_at, :updated_at
json.url tourist_place_url(tourist_place, format: :json)
