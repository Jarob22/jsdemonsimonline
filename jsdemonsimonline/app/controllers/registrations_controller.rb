class RegistrationsController < Devise::RegistrationsController


	protected

	def after_update_path_for(resource)
		decks_path
	end

	def update_resource(resource, acc_params)
		user_params = params[:user].permit(:level, :cardslist)
		resource.update_without_password(user_params)
	end



end
