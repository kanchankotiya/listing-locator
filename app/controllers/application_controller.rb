class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
   def after_sign_in_path_for(resource)
      new_dashboard_listing_path
   end

end
