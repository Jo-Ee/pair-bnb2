class ReservationsController < ApplicationController


	def new
		@listing = current_listing
		@reservation = @listing.reservations.new		
	end

	def create
		@reservation = current_listing.reservations.new(reservation_params)
		if @reservation.save
			no_days = @reservation.check_out_date-@reservation.check_in_date
			@reservation[:total_price] = (no_days.to_i)*(current_listing.price)
			@reservation[:user_id] = current_user.id
			@reservation.save
			flash[:success] = "Your reservation has been confirmed"
			ReservationWorker.perform_later(@reservation.id)
			# ReservationMailer.booking_email(@reservation).deliver_now
			redirect_to reservation_path(@reservation.id)
		else
			flash[:warning] = "Rooms are not available."
			@listing = @reservation.listing
			render :new
		end
	end

	def show
		@reservation = Reservation.find(params[:id])
	end

private

	def reservation_params
      params.require(:reservation).permit(:check_in_date, :check_out_date)
    end
end
