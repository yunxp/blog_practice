class SystemUsersController < ApplicationController
	before_action :authenticate_system_user!
	layout "system_user", only: :show

	def show
		@system_user = SystemUser.find(params[:id])
		@travels = @system_user.travels.paginate(:page => params[:page], per_page: 10)
	end

	def edit
		@system_user = SystemUser.find(params[:id])
	end

	def update
		@system_user = SystemUser.find(params[:id])
	  if @system_user.update(system_user_params)
	    redirect_to root_path
	  else
	    render 'edit'
	  end
	end

	private
	def system_user_params
    params.require(:system_user).permit(:username, :signature, :avatar)
  end
end