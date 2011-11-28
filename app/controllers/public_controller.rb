class PublicController < ApplicationController
  def index
    redirect_to udids_url if current_user
  end
  
  def privacy_and_safety
  end
  
  def not_found
  end
  
end
