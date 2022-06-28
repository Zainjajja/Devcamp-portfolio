class Portfolio < ApplicationRecord
	validates_presence_of :tittle,:body,:main_image,:thumb_image

	def self.angular
		where(subtittle:'Angular')
	end

end
