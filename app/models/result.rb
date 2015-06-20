class Result < ActiveRecord::Base
	belongs_to :users
	belongs_to :charities
end
