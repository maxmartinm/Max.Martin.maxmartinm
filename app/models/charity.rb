class Charity < ActiveRecord::Base
	has_many :users
	has_many :classifications
	has_many :categories, through: :classifications
end