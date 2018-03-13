class AccommodationsController < InheritedResources::Base

  def upload_accommodation_image
     @accommodations = Accommodation.find(params[:upload_images][:accommodation_id])
     @image = @accommodations.images.build(img_name: params[:upload][:img_name])
     if @image.save!
      respond_to do |format|
        format.json{ render :json => @image }
      end
    end
  end

    def remove_accommodation_image
     @image = Image.find(params[:id])
     if  @image .destroy
      render json: { message: "file delete from server"}
    else
      render json: {message: @image.errors.full_messages.join(", ") }

    end
  end
  private

    def accommodation_params
      params.require(:accommodation).permit(:name, :city, :state, :country, :address, :latitude, :longitude, images_attributes: [:id,:img_name, :imageable_id, :imageable_type, :_destroy])
    end
end

