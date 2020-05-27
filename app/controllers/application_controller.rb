class ApplicationController < ActionController::Base

    def show
        render template: "pages/#{params[:page]}"
    end
end
