class ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :edit, :update, :destroy]
  layout 'listing'
  
  def index
    @listings = Listing.all
   
  end

  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_listing
      @listing = Listing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
   def listing_params
      params.require(:listing).permit(:name, :city, :state, :country, :banner_image, :longitude, :latitude, :about_palce, :address, :phone_number, :email, :website,:zip_code)
    end
end
