class StudentsController < ApplicationController
require 'pry'





    def dashboard
			if user_signed_in? && current_user.type == "Student"
  
			@user = current_user
			@lectures = current_user.lectures
			render 'students/show'
		else
			redirect_to new_user_session_path
		end
	end

	def index
		@lectures = Lecture.all
	end

	def edit
		
		lecture = Lecture.find(params[:lecture_id])
		current_user.lectures.push(lecture)
		#Student.push(@lecture)
		redirect_to user_session_path
		#binding.pry
	end

	def remove
		delete_lecture = Lecture.find(params[:lecture_id])
		current_user.lectures.delete(delete_lecture)
		redirect_to new_user_session_path
		#Student.find_by_id().lectures
	end


	



end
