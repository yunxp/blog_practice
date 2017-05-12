class RegistrationsController < Devise::RegistrationsController
	before_action :authenticate_system_user!, only: [:edit, :update]
	layout proc{ |controller| system_user_signed_in? ? "system_user" : "application" }

	def edit
    @system_user = current_system_user
  end

	# protected
	# def after_update_path_for(resource)
 #    system_user_path(resource)
 #  end

  private
  def sign_up_params
    params.require(:system_user).permit(:username, :email, :password, :password_confirmation)
  end

  def after_update_path_for(_)
    edit_system_user_registration_path
  end
end