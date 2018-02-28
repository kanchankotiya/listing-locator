class AmenitiesController < InheritedResources::Base

  private

    def amenity_params
      params.require(:amenity).permit(:amenity_icon, :amenity_name)
    end
end

