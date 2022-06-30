class Topic < ApplicationRecord
	validates_presence_of :tittle
	has_many : blogs
end
