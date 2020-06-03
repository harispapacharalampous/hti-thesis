class ApplicationController < ActionController::Base

    def show
        render template: "pages/#{params[:page]}"
    end



   protected

        def configure_permitted_parameters
            devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :climit) }
            devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:climit, :email, :password, :current_password) }
        end

end
