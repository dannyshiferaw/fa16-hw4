class PagesController < ApplicationController
	def home
		@cats = Cat.all
		@todo = Todo.all 
		@user = User.all
	end

	def new
	end

	def create
		Cat.create(:name => params[:name])
		Todo.create(
			:tasks => params[:tasks],
			:finsished => params[:finsished])
		User.create(
			:daniel => params[:daniel],
			:email => params[:email],
			:age => params[:age])
		redirect_to '/'
	end
end

