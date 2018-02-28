class HomeController < ApplicationController
  layout 'listing'
  def index
    @tourist_places = TouristPlace.all
    @listing_types = ListingType.all
  end
end
