class PreferencesController < ApplicationController
	def destroy
		Preference.find(params[:id]).destroy
		redirect_to "/users/#{current_user.id}"
	end
	def show
	end
	def create
		@preference = Preference.new(:user_id => params[:user_id], :category_id => params[:category_id])
		if @preference.save
			redirect_to(:back)
			flash[:notice] = "You have added #{Category.find(@preference.category_id).title} to your preferences."
		else
			flash[:notice] = "You already have this preference."
			redirect_to(:back)
		end
	end

	protected

	def update_results
			Result.where("user_id = current_user.id").each do |result|
				result.destroy
			end
			ordered_results = {}
			current_user.categories.each do |user_category|
				user_category.charities.each do |charity|
					int i = 0
					charity.categories.each do |category|
						current_user.categories.each do |comparator|
							if category == comparator
								i += 1
							end
						end
					end
					ordered_results[charity] = i
				end
			end
	end
end