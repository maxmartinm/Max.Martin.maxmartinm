class Category < ActiveRecord::Base
	has_many :preferences
	has_many :classifications
	has_many :users, through: :preferences
	has_many :charities, through: :classifications
end
