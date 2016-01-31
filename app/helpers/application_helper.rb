module ApplicationHelper
	
	def current_listing
		Listing.find(params[:listing_id])		
	end

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def resource_class
    devise_mapping.to
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

end
