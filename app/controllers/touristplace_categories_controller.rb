class TouristplaceCategoriesController < ApplicationController
  before_action :set_touristplace_category, only: [:show, :edit, :update, :destroy]

  # GET /touristplace_categories
  # GET /touristplace_categories.json
  def index
    @touristplace_categories = TouristplaceCategory.all
  end

  # GET /touristplace_categories/1
  # GET /touristplace_categories/1.json
  def show
  end

  # GET /touristplace_categories/new
  def new
    @touristplace_category = TouristplaceCategory.new
  end

  # GET /touristplace_categories/1/edit
  def edit
  end

  # POST /touristplace_categories
  # POST /touristplace_categories.json
  def create
    @touristplace_category = TouristplaceCategory.new(touristplace_category_params)

    respond_to do |format|
      if @touristplace_category.save
        format.html { redirect_to @touristplace_category, notice: 'Touristplace category was successfully created.' }
        format.json { render :show, status: :created, location: @touristplace_category }
      else
        format.html { render :new }
        format.json { render json: @touristplace_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /touristplace_categories/1
  # PATCH/PUT /touristplace_categories/1.json
  def update
    respond_to do |format|
      if @touristplace_category.update(touristplace_category_params)
        format.html { redirect_to @touristplace_category, notice: 'Touristplace category was successfully updated.' }
        format.json { render :show, status: :ok, location: @touristplace_category }
      else
        format.html { render :edit }
        format.json { render json: @touristplace_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /touristplace_categories/1
  # DELETE /touristplace_categories/1.json
  def destroy
    @touristplace_category.destroy
    respond_to do |format|
      format.html { redirect_to touristplace_categories_url, notice: 'Touristplace category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_touristplace_category
      @touristplace_category = TouristplaceCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def touristplace_category_params
      params.require(:touristplace_category).permit(:name,tourist_place_attributes: [:id, :name, :city, :state, :country, :banner_image, :longitude, :latitude, :about_place])
    end
end
