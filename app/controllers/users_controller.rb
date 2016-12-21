class UsersController < ApplicationController

    before_action :logged_in?, only: [:show]

    def show
        @user = User.find(params[:id])
        render :show
    end
    
    def index
        @users = User.all
    end

    def new
        @user = User.new
    end

    # def create
    #     @user = User.create(user_params)
    #     login(@user)
    #     redirect_to @user
    # end

    def create
        user = User.new(user_params)
        if user.save
            redirect_to user_path(user)
        else
            flash[:error] = user.errors.full_messages.join(", ")
            redirect_to new_user_path
        end
    end

    def show
        @user = User.find_by_id(params[:id])
    end

    private

    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password)
    end
end
