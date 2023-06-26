class LabelsController < ApplicationController
  def index
    labels = Label.where(project_id: params[:project_id])

    render json: {
      total: labels.count,
      results: labels,
    }
  end
end
