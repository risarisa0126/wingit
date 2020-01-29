class ApplicationController < ActionController::Base
before_action :configure_permitted_parameters, if: :devise_controller?

# protect_from_forgery with: :exception
# before_filter :set_locale

# def set_locale
#   I18n.locale = locale
# end

# def locale
#   @locale ||= params[:locale] || I18n.default_locale
# end

# def default_url_options(options={})
#   options.merge(locale: locale)
# end


def after_sign_up_path_for(resource)
  case resource
  when Guide
    guides_mypage_path(resource.id)
  when Tourist
    tourists_mypage_path(resource.id)
  end
end

def after_sign_in_path_for(resource)
  case resource
  when Guide
    mypage_guide_path(resource.id)
  when Tourist
    mypage_tourist_path(resource.id)
  when Admin
  	admins_users_index_path
  end
end


def after_sign_out_path_for(resource)
  root_path
end

protected

def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:guide_firstname, :guide_lastname, :guide_username,
       :guide_gender,:guide_age, :guide_profile_image, :guide_about_me,
   	   :tourist_firstname, :tourist_lastname, :tourist_username, :tourist_gender, :tourist_age,
   	   :tourist_profile_image, :tourist_about_me, :fromdate, :todate])
end
end
