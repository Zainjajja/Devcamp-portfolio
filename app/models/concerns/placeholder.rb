module Placeholder
	extend ActiveSupport::Concern
	def self.image_generator()
		"https://via.placeholder.com/300"
	end
end
