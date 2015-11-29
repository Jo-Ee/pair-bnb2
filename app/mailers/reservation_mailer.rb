class ReservationMailer < ApplicationMailer
	def booking_email(reservation)
		@reservation = reservation
		mail(to: @reservation.user.email, subject: "Your booking has been confirmed")		
	end
end
