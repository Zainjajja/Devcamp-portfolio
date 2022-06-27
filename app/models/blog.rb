class Blog < ApplicationRecord
	extend FriendlyId

	enum status:{draft:0,published:1}
	  friendly_id :tittle, use: :slugged
	
end
