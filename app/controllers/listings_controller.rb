class ListingsController < ApplicationController
  before_action :set_listing, only: [:show]
  before_action :set_listing_type, only: [:show, :index]
  layout 'listing'
  
  def index
    @listings = @listing_type.listings

  end

  def show
    @image = Image.all
    @opening= OpeningHour.all
  end
  
 
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_listing
      @listing = Listing.find(params[:id])
    end

    def set_listing_type
      @listing_type = ListingType.find(params[:listing_type_id])
    end

end
