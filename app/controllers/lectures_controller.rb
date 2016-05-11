class LecturesController < ApplicationController
require'pry'

	def new
		@teacher = Teacher.find_by(id: params[:teacher_id])
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

		
		
		render 'show'
	end
	





end
