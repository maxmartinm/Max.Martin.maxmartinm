class Preference < ActiveRecord::Base
	belongs_to :users
	belongs_to :categories

	validates_uniqueness_of :user_id, :scope => :category_id
end
