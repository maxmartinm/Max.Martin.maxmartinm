class UsersController < ApplicationController
	def index
		@users = User.all
	end
	def show
		@user = User.find(params[:id])
		@preferences = @user.preferences
		@charities = @user.charities
		@results = @user.results
		if(params[:i] != nil)
			@i = params[:i]
		else
			@i = 0
		end
	end
	def welcome
	end
end