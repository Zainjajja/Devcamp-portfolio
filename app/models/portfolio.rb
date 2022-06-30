class Portfolio < ApplicationRecord
	include Placeholder
	validates_presence_of :tittle,:body,:main_image,:thumb_image

	def self.angular
		where(subtittle:'Angular')
	end

	after_initialize :set_defaults

	def set_defaults
		self.main_image ||= Placeholder.image_generator
		
		self.thumb_image ||= Placeholder.image_generator
		
	end


end
