ActiveAdmin.register TouristplaceCategory do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :name

  form do |f|
    f.inputs do
      f.input :name
    end
    f.inputs do
      f.has_many :tourist_places, heading: 'Places', allow_destroy: true do |ww|
        ww.input :name
        ww.input :city
        ww.input :state
        ww.input :country
        ww.input :banner_image, :for => :banner_image, :as => :file
        ww.input :longitude
        ww.input :latitude
        ww.input :about_place
      end
    end
    f.actions
  end

end
