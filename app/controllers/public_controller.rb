class PublicController < ApplicationController
  def index
    redirect_to udids_url if current_user
  end

  def start
  end

  def not_found
  end

  def faq
  end

end
