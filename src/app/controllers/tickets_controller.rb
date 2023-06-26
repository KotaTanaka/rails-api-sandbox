class TicketsController < ApplicationController
  def index
    tickets = Ticket.where("exists (select 1 from ticket_groups where project_id = ? and id = tickets.ticket_group_id)", params[:project_id])

    grouped_tickets_map = Hash.new
    tickets.each do |ticket|
      grouped_tickets = grouped_tickets_map[ticket.ticket_group_id]
      
      if grouped_tickets.nil?
        grouped_tickets_map.store(ticket.ticket_group_id, [ticket])
      else
        grouped_tickets.push(ticket)
        grouped_tickets_map.store(ticket.ticket_group_id, grouped_tickets)
      end
    end

    render json: grouped_tickets_map
  end

  def show
    group = Ticket
      .where("exists (select 1 from ticket_groups where project_id = ? and id = tickets.ticket_group_id)", params[:project_id])
      .find_by(id: params[:id])

    render json: {
      result: group,
    }
  end
end
