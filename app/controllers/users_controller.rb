class UsersController < ApplicationController
	before_filter :authenticate_user!
	def index
		@users = user.all
	end

	def show
		@user = user.find(params[:id])
	end

end
