class Post < ActiveRecord::Base
	validates :title, :words, :presence => true
end
