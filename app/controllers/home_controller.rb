class HomeController < ApplicationController
	
	def index
		@travels = Travel.limit(4)
		@system_users = SystemUser.limit(4)
	end

	def about
	end
end