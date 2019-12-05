class ApplicationController < ActionController::Base
    include SessionsHelper

#beforeフィルター
    #users & souvenirs controller
    def already_logged_in
        unless logged_in?
            flash[:danger] = "ログインしてください"
            redirect_to login_url
        end
    end
end
