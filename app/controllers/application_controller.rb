class ApplicationController < ActionController::Base
before_action :configure_permitted_parameters, if: :devise_controller?

    def show
        render template: "pages/#{params[:page]}"
    end



   protected

        def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :climit, :wlimit])
        devise_parameter_sanitizer.permit(:account_update, keys: [:email, :password,:current_password, :climit, :wlimit])

        end

end
