module ApplicationHelper
	
	def current_listing
		Listing.find(params[:listing_id])		
	end
end
