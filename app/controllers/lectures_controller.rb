class LecturesController < ApplicationController
require'pry'

	def edit
		#binding.pry

		@lecture = Lecture.find_by_id(params[:id])
		@teacher = Teacher.find_by_id(params[:teacher_id])
		
	end


	def update
		@teacher = Teacher.find_by(id: params[:teacher_id])
		@lecture = params[:lecture]
		@lecture_id = Lecture.find_by_id(params[:id]).id

		@topic = params[:lecture][:topic]
		@time = params[:lecture][:time]
		@hangoutId = params[:lecture][:hangoutId]
		@studentAmount = params[:lecture][:studentAmount]
		
		@teacher.lectures.update(@lecture_id, topic: @topic, time: @time, hangoutId: @hangoutId, studentAmount: @studentAmount)
		redirect_to user_session_path
	end


	def index
  		 


	end


	def new
		@show_lecture = Lecture.all
		@teacher = current_user
		@lecture = Lecture.new
	end

	def create
			
		@teacher = Teacher.find_by(id: params[:teacher_id])
		

		@lecture = params[:lecture]
		
		@topic = params[:lecture][:topic]
		@time = params[:lecture][:time]
		@hangoutId = params[:lecture][:hangoutId]
		@studentAmount = params[:lecture][:studentAmount]
		
		@teacher.lectures.create(topic: @topic, time: @time, hangoutId: @hangoutId, studentAmount: @studentAmount)

		
		
		redirect_to user_session_path
	end
	




end
