class UserMailer < ActionMailer::Base
  default from: "from@example.com"

	def create_ticket(ticket, host)
    	@host = host
    	@ticket = ticket
		mail(to: @ticket.email, subject: "Cngratulation, you create ticket")
	end

end
