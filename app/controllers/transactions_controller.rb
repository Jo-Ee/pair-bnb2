class TransactionsController < ApplicationController
	before_action :authenticate_user!

  def new
  	gon.client_token = generate_client_token
  end

  def create
  	@reservation = Reservation.find(params[:reservation_id])
	  @result = Braintree::Transaction.sale(
  		amount: @reservation.total_price,
  		payment_method_nonce: params[:payment_method_nonce])
  	if @result.success?
  		@result
  		redirect_to root_url, notice: "Congralutions! Your transaction has been successfully!"
  	else
  	  flash[:alert] = "Something went wrong while processing your transaction. Please try again!"
      gon.client_token = generate_client_token
      render :new
  		
  	end	
  end

  private

  def generate_client_token
  	Braintree::ClientToken.generate
  end
end
