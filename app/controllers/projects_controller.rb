class ProjectsController < ApplicationController
	def index
		@projs = Project.all
	end
	def new 
		@proj = Project.new
	end
	def create 
		
	    @proj = Project.new(project_params)

		@proj.save
		redirect_to manager_projects_path(params[:manager_id])
	end
	def project_params
    params.require(:project).permit(:name, :manager_id)
	end

end
