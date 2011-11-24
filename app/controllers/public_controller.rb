class PublicController < ApplicationController
  def index
    redirect_to udids_url if current_user
  end
end
