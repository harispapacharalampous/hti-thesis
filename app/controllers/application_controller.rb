class ApplicationController < ActionController::Base
before_action :configure_permitted_parameters, if: :devise_controller?

    def show
        render template: "pages/#{params[:page]}"
    end



   protected

        def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :climit, :wlimit, :walkpref, :commutepref, :condition])
        devise_parameter_sanitizer.permit(:account_update, keys: [:email, :password,:current_password, :climit, :wlimit, :walkpref, :commutepref])

        end
            #custom links for forms etc.
          #def after_sign_in_path_for(new_user_session)
           # posts_path
          #end

          #def after_sign_up_path_for(new_user_registration)
          #  edit_user_registration_path
          #end




end
