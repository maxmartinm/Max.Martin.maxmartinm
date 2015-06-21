class UsersController < ApplicationController
	def index
		@users = User.all
	end
	def show
		@user = User.find(params[:id])
		@preferences = @user.preferences
		@charities = @user.charities
	end
	def welcome
	end
end