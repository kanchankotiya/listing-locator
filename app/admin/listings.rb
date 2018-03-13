ActiveAdmin.register Listing do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :name, :city, :state, :country, :banner_image, :user_id, :about_listing, :address, :phone_number, :email, :website,:zip_code, :listing_type_id, :featured
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
