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
		if user_signed_in?
			redirect_to user_path(:id => current_user.id)
		end
	end
	def next_update
		@user = User.find(params[:id])
		@user.next_donation = params[:char_id]
		@user.save
		redirect_to :back
	end
	def first_update
		if user_signed_in?
			@user = current_user
			@user.next_donation = params[:char_id]
			@user.save
			redirect_to user_path(:id => current_user.id)
		end
	end
end