class StudentsController < ApplicationController
require 'pry'





    def dashboard
			if user_signed_in? && current_user.type == "Student"
  
			@user = current_user
			@lectures = current_user.lectures.all#.select(&:time).sort_by(&:time).reverse
			@lecture_next = current_user.lectures.max_by {|o| o[:datetime]}
			render 'students/show'
		else
			redirect_to new_user_session_path
		end
	end

	def index
		# @lectures = Lecture.all.select(&:time).sort_by(&:time).reverse
		# @user_lectures = current_user.lectures


  		@show_lecture = Lecture.all#.select(&:time).sort_by(&:time).reverse
		@current_lectures = current_user.lectures.all
		@answer = @show_lecture - @current_lectures
	end

	def edit
		
		lecture = Lecture.find(params[:lecture_id])
		current_user.lectures.push(lecture)
		#Student.push(@lecture)
		redirect_to user_session_path
		
	end

	def remove
		delete_lecture = Lecture.find(params[:lecture_id])
		current_user.lectures.delete(delete_lecture)
		redirect_to new_user_session_path
		#Student.find_by_id().lectures
	end


	



end
