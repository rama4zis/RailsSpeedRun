class UsersController < ApplicationController

    def index 
        @users = User.all
    end

    def signin
        @user = User.find_by(username: params[:username], password: params[:password])
        if @user
            session[:user_id] = @user.id
            flash[:success] = "Welcome #{@user.username}"
            redirect_to '/'
        else
            flash[:danger] = "Invalid username or password"
            redirect_to '/user/login'
        end
    end

    def new
        @user = User.new(email: params[:email], username: params[:username], password: params[:password])
        if @user.save
            session[:user_id] = @user.id
            flash[:success] = "Welcome #{@user.username}"
            redirect_to '/'
        else
            redirect_to '/user/register'
        end
    end

    def logout 
        session[:user_id] = nil
        redirect_to '/'
    end

    def edit
        @current_user = User.find(params[:id])
        @evaluations = @current_user.evaluations
    end

    def show_evaluation
        @user = @current_user
        @evaluations = @user.evaluations
    end
end
