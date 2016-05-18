class TeachersController < ApplicationController
require 'pry'

	def destroy
		lecture_id = params[:lecture_id]
		#binding.pry
		current_user.lectures.find_by_id(lecture_id).destroy
		redirect_to user_session_path
	end



	def show
		# @teacher = User.find(params[:id])
		@teacher = current_user
		redirect_to new_user_session_path
	end

	def dashboard			
			if user_signed_in? && current_user.type == "Teacher"
  
				@user = current_user
				@lecture_next = current_user.lectures.max_by {|o| o[:datetime]}
				@lectures = current_user.lectures.all#.select(&:time).sort_by(&:time).reverse
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
