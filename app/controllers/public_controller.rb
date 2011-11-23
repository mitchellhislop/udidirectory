class PublicController < ApplicationController
  def index
    redirect_to udids_url if user_signed_in?
  end
end
