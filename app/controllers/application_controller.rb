class ApplicationController < ActionController::Base
before_action :configure_permitted_parameters, if: :devise_controller?

def after_sign_in_path_for(resource)
  case resource
  when Guide
    guides_mypage_path(resource.id)
  when Tourist
    tourists_mypage_path(resource.id)
  when Admin
  	admins_users_index_path(resource.id)
  end
end

def after_sign_up_path_for(resource)
  case resource
  when Guide
    guides_mypage_path(resource.id)
  when Tourist
    tourists_mypage_path(resource.id)
  when Admin
  	admins_users_index_path(resource.id)
  end
end

def after_sign_out_path_for(resource)
  root_path
end


def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:guide_firstname, :guide_lastname, :guide_username, :guide_gender,
       :guide_age, :guide_profile_image, :guide_about_me, :daysofweek])
end


end
