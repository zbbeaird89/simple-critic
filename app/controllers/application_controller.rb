class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protected

    def after_sign_in_path_for(user)
      movies_url
    end

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
    end
end
