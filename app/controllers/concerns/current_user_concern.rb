module CurrentUserConcern
	extend ActiveSupport::Concern

  	def current_user
  	  super || geust_user
  	end

  	def geust_user
  		OpenStruct.new(name: "Guest User", 
  			           first_name: "Guest", 
  			           last_name: "Guest User",
  			           email: "guest@fakemail.com"
  			           )
  	end
  end