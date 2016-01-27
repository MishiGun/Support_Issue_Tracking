class TicketsController < ApplicationController

	def index
		@tickets = Ticket.all
	end

	def new
		@ticket = Ticket.new 
	end

	def create
    	@ticket = Ticket.new(ticket_params)
    		if @ticket.save
      			redirect_to tickets_path
   			else
   				render "new"
    		end
  	end
		
	def destroy
    	@ticket.destroy
    end

	def update
		@ticket.update(ticket_params)
	end

	def show
		ticket_id = params[:id]
      	@ticket = Ticket.find_by(id: ticket_id)
	end

	private

	def ticket_params
    	params.require(:ticket).permit(:key, :name, :email, :department, :subject, :text)
  end




end
