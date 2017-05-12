class TravelsController < ApplicationController
	before_action :authenticate_system_user!, only: [:new, :edit, :create, :update]

	def index
		@travels = Travel.includes(:system_user).paginate(:page => params[:page], per_page: 6)
	end

	def new
		@travel = Travel.new
	end

	def show
		@travel = Travel.find(params[:id])
	end

	def edit
		@travel = Travel.find(params[:id])
	end

	def create
		@travel = Travel.new(travel_params)
		if @travel.save
			redirect_to @travel
		else
			render 'new'
		end
	end

	def update
	  @travel = Travel.find(params[:id])
	  if @travel.update(travel_params)
	    redirect_to @travel
	  else
	    render 'edit'
	  end
	end

	def destroy
	  @travel = Travel.find(params[:id])
	  @travel.destroy
	  redirect_to travels_path
	end

	private
	def travel_params
    params.require(:travel).permit(:title, :description, :content, :cover, :system_user_id, :bootsy_image_gallery_id)
  end
end