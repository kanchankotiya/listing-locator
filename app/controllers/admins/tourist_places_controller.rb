class Admins::TouristPlacesController < ApplicationController
  before_action :set_tourist_place, only: [:show, :edit, :update, :destroy]

  # GET /tourist_places
  # GET /tourist_places.json
  def index
    @tourist_places = TouristPlace.all
  end

  # GET /tourist_places/1
  # GET /tourist_places/1.json
  def show
  end

  # GET /tourist_places/new
  def new
    @tourist_place = TouristPlace.new
  end

  # GET /tourist_places/1/edit
  def edit
  end

  # POST /tourist_places
  # POST /tourist_places.json
  def create
    @tourist_place = TouristPlace.new(tourist_place_params)

    respond_to do |format|
      if @tourist_place.save
        format.html { redirect_to @tourist_place, notice: 'Tourist place was successfully created.' }
        format.json { render :show, status: :created, location: @tourist_place }
      else
        format.html { render :new }
        format.json { render json: @tourist_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tourist_places/1
  # PATCH/PUT /tourist_places/1.json
  def update
    respond_to do |format|
      if @tourist_place.update(tourist_place_params)
        format.html { redirect_to @tourist_place, notice: 'Tourist place was successfully updated.' }
        format.json { render :show, status: :ok, location: @tourist_place }
      else
        format.html { render :edit }
        format.json { render json: @tourist_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tourist_places/1
  # DELETE /tourist_places/1.json
  def destroy
    @tourist_place.destroy
    respond_to do |format|
      format.html { redirect_to tourist_places_url, notice: 'Tourist place was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tourist_place
      @tourist_place = TouristPlace.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tourist_place_params
      params.require(:tourist_place).permit(:name, :city, :state, :country, :banner_image, :longitude, :latitude, :about_place)
    end
end
