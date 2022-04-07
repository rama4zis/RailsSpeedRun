class ApplicationController < ActionController::Base
    before_action :current_user
    before_action :current_admin

    def current_user 
        @current_user = User.find_by(id: session[:user_id])
    end

    def current_admin
        @current_admin = Admin.find_by(id: session[:admin_id])
    end

end
