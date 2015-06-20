class CategoriesController < ApplicationController
	def index
		@categories = Category.all 
	end
	def show
		@category = Category.find(params[:id])
	end
	def initial
		@categories = Category.all
	end
end