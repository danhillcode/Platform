class TeachersController < ApplicationController


	def destroy
		
		
		
	 #Teacher.find_by(id: params[:teacher_id].lectures.find_by(id: params[:teacher_id]).destroy
	end




	def show
		# @teacher = User.find(params[:id])
		@teacher = current_user
		render 'teachers/show'
	end

	def dashboard
					
			if user_signed_in? && current_user.type == "Teacher"
  
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
