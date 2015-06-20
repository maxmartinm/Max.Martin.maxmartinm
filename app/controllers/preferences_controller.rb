class PreferencesController < ApplicationController
	def destroy
		Preference.find(params[:id]).destroy
		redirect_to "/users/#{current_user.id}"
	end
	def show
	end
	def create
		@preference = Preference.new(:user_id => params[:user_id], :category_id => params[:category_id])
		@preference.save
		redirect_to(:back)
		flash[:notice] = "You have added #{Category.find(@preference.category_id).title} to your preferences."
	end
end