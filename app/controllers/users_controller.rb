class UsersController < ApplicationController
	def new
		@user = User.new
	end
	def create
		binding.pry
		@user = User.create(user_params) 
   		redirect_to "/"
 	end
 	def user_params
 		params.require(:user).permit(:name, contact_attributes: [ :mobile, :landline], address_attributes: [ :address1, :address2, :city, :state])
 	end
end
