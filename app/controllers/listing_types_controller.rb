class ListingTypesController < ApplicationController
  before_action :set_listing_type, only: [:show, :edit, :update, :destroy]

  # GET /listing_types
  # GET /listing_types.json
  def index
    @listing_types = ListingType.all
  end

  # GET /listing_types/1
  # GET /listing_types/1.json
  def show
  end

  # GET /listing_types/new
  def new
    @listing_type = ListingType.new
  end

  # GET /listing_types/1/edit
  def edit
  end

  # POST /listing_types
  # POST /listing_types.json
  def create
    @listing_type = ListingType.new(listing_type_params)

    respond_to do |format|
      if @listing_type.save
        format.html { redirect_to @listing_type, notice: 'Listing type was successfully created.' }
        format.json { render :show, status: :created, location: @listing_type }
      else
        format.html { render :new }
        format.json { render json: @listing_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /listing_types/1
  # PATCH/PUT /listing_types/1.json
  def update
    respond_to do |format|
      if @listing_type.update(listing_type_params)
        format.html { redirect_to @listing_type, notice: 'Listing type was successfully updated.' }
        format.json { render :show, status: :ok, location: @listing_type }
      else
        format.html { render :edit }
        format.json { render json: @listing_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /listing_types/1
  # DELETE /listing_types/1.json
  def destroy
    @listing_type.destroy
    respond_to do |format|
      format.html { redirect_to listing_types_url, notice: 'Listing type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_listing_type
      @listing_type = ListingType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def listing_type_params
      params.require(:listing_type).permit(:name, :icon)
    end
end
