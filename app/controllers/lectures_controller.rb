class LecturesController < ApplicationController
require'pry'


	def index
  		@show_lecture = Lecture.all
	end


	def new
		@show_lecture = Lecture.all
		@teacher = current_user
		@lecture = Lecture.new
	end

	def create
		@teacher = Teacher.find_by(id: params[:teacher_id])
		#@lecture = Lecture.new

		@lecture = params[:lecture]
		
		@topic = params[:lecture][:topic]
		@time = params[:lecture][:time]
		@hangoutId = params[:lecture][:hangoutId]
		@studentAmount = params[:lecture][:studentAmount]
		
		@teacher.lectures.create(topic: @topic, time: @time, hangoutId: @hangoutId, studentAmount: @studentAmount)

		
		
		redirect_to user_session_path
	end
	




end
