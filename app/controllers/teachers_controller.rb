class TeachersController < ApplicationController

	def show
		# @teacher = User.find(params[:id])
		@teacher = current_user
		render 'teachers/show'
	end

	def dashboard
		if user_signed_in? 
			@user = current_user
			@lectures = current_user.lectures
			render 'teachers/show'
		else
			redirect_to new_user_session_path
		end
	end




	def new
  		@teacher =  Teacher.find(params[:id])
  		#render 'teachers/show'
	end



end
