class TeachersController < ApplicationController

	def show
		@teacher = User.find(params[:id])
		render 'teachers/show'
	end

	def new
  		@teacher =  Teacher.find(params[:id])
  		#render 'teachers/show'
	end



end
