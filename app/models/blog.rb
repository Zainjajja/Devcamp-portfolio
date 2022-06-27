class Blog < ApplicationRecord
	extend FriendlyId

	enum status:{draft:0,published:1}
	  friendly_id :tittle, use: :slugged
	  validates_presence_of :tittle, :body
	
end
