class TicketGroupsController < ApplicationController
  def index
    results = TicketGroup.where(project_id: params[:project_id])

    render json: {
      total: results.count,
      results: results,
    }
  end
end
