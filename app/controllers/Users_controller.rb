class UsersController < ApplicationController 
	before_filter :authenticate_user!
  def index
  end
  def new
  	@user = User.new
  end
  def create
  	@user = User.create(user_params)
  def user_params
  	params.require(:user).permit(:name)
  end
 end