class ManagersController < ApplicationController
	def index
		@mangs = Manager.all
	end
	def new
		@mang = Manager.new
	end
	def create 
		@mang = Manager.new(manager_params)

		@mang.save
		redirect_to managers_path
	end
	private
	def manager_params
	params.require(:manager).permit(:name)
	end 
end
