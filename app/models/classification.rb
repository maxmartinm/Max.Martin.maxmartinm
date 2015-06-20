class Result < ActiveRecord::Base
	belongs_to :categories
	belongs_to :charities
end