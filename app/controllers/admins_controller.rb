class AdminsController < ApplicationController

    def signin
        @admin = Admin.find_by(username: params[:username], password: params[:password])
        if @admin
            session[:admin_id] = @admin.id
            flash[:success] = "Welcome #{@admin.username}"
            redirect_to '/'
        else
            flash[:danger] = "Invalid username or password"
            redirect_to '/admin/login'
        end
    end
    
    
    def logout
        reset_session
        redirect_to '/'
    end

    def input_nilai

    end
    
    def insert_nilai
        @score = Evaluation.new( user_id: params[:user_id], guru_id: @current_admin.id, date: params[:date], semester: params[:semester], mapel_id: params[:mapel_id], nilai: params[:nilai] )
    end



end
