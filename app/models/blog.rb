class Blog < ApplicationRecord
	enum status: { Draft: 0, Published: 1 }
	extend FriendlyId
    friendly_id :title, use: :slugged

    validates_presence_of :title, :body


    belongs_to :topic

    def self.special_blogs
    	all
    end
 end
