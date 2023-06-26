class ProjectsController < ApplicationController
  def index
    projects = Project.all

    render json: {
      total: projects.count,
      results: projects,
    }
  end
end
