class ProjectsController < ApplicationController

def create
	@project = Project.create(project_params)
end

def index
	@projects = Project.all
end

def show
  @project = Project.find(params[:id])
end

def new
  @project = Project.new
end

def update
  @project = Project.find(params[:id])
  @project.update_attributes(project_params)
end

def destroy
  @project = Project.find(params[:id])
  @project.destroy
end

# def edit
#    @project = Project.find(params[:id])
# end

private

def project_params
  params.require(:projects).permit(:url, :img, :description)
end

end