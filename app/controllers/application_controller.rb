class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :ensure_domain

  APP_DOMAIN = 'udidirectory.com'

protected

  def ensure_domain
    return unless Rails.env.production?
    if request.env['HTTP_HOST'] != APP_DOMAIN
      redirect_to "http://#{APP_DOMAIN}", :status => 301
    end
  end
end
