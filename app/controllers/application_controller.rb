class ApplicationController < ActionController::Base
     before_action :configure_permitted_parameters, if: :devise_controller?

     def configure_permitted_parameters
       added_params = [:name]
       devise_parameter_sanitizer.permit :sign_up, keys: added_params
       devise_parameter_sanitizer.permit :account_update, keys: added_params
     end

     def all_communities
      Community.order(:name)
    end
  
    helper_method :all_communities
end
