class UsersController < ApplicationController 
	before_filter :authenticate_user!
        def index
    end

    def new
        @user = User.new
    end

    def create
        render plain: params[:article].inspect
        #@user = User.new(user_params)
        #@user.save
        #redirect_to @article
    end

    private
        def user_params
        	params.require(:user).permit(:name, :phone, :age, :sex, :email, :password, :password_confirmation)
        end
 end
