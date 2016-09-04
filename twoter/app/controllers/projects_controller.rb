class ProjectsController < ApplicationController
	def index
		@twots= Twot.all
	end
	def new 
		@twot = Twot.new
	end

	def create
		@twot = Twot.new(params[:twot].permit(:body))
		
		if @twot.save
			flash[:notice] = "Bieeeen, has twoteado!!!!"
			redirect_to action: 'index'
		else
			render :new
		end
	end	
		
end