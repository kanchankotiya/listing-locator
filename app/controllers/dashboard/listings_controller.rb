module Dashboard

  class ListingsController < ApplicationController
    before_action :set_listing, only: [:show, :edit, :update, :destroy]
    layout 'dashboard'
    # GET /listings
    # GET /listings.json
    def index
      @listings = Listing.all
    end

    # GET /listings/1
    # GET /listings/1.json
    def show
    end

    # GET /listings/new
    def new
      @listing = Listing.new
    end

    # GET /listings/1/edit
    def edit
    end

    def upload_listing_image
     @listings = Listing.find(params[:upload_images][:listing_id])
     @image = @listings.images.build(img_name: params[:upload][:img_name])
     if @image.save!
      respond_to do |format|
        format.json{ render :json => @image }
      end
    end
  end

    def remove_listing_image
     @image = Image.find(params[:id])
     if  @image .destroy
      render json: { message: "file delete from server"}
    else
      render json: {message: @image.errors.full_messages.join(", ") }

    end
  end


    # POST /listings
    # POST /listings.json
    def create
      @listing = Listing.new(listing_params)

      respond_to do |format|
        if @listing.save
          format.html { redirect_to dashboard_listing_path(@listing), notice: 'Listing was successfully created.' }
          format.json { render :show, status: :created, location: @listing }
        else
          format.html { render :new }
          format.json { render json: @listing.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /listings/1
    # PATCH/PUT /listings/1.json
    def update
      respond_to do |format|
        if @listing.update(listing_params)
          format.html { redirect_to @listing, notice: 'Listing was successfully updated.' }
          format.json { render :show, status: :ok, location: @listing }
        else
          format.html { render :edit }
          format.json { render json: @listing.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /listings/1
    # DELETE /listings/1.json
    def destroy
      @listing.destroy
      respond_to do |format|
        format.html { redirect_to listings_url, notice: 'Listing was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_listing
        @listing = Listing.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def listing_params
        params.require(:listing).permit(:name, :city, :state, :country, :banner_image, :about_palce, :address, :phone_number, :email, :website,:zip_code, :listing_type_id)
      end
  end

end