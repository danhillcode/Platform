class StudentsController < ApplicationController


    def dashboard
		if user_signed_in? 
			@user = current_user
			@lectures = current_user.lectures
			render 'students/show'
		else
			redirect_to new_user_session_path
		end


	end





end
