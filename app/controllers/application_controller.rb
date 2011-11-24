class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :ensure_domain

  APP_DOMAIN = 'udidirectory.com'

protected

  def authenticate_user!
    redirect_to "/" unless current_user
  end

  helper_attr :current_user
  def current_user
    return unless session['access_token'] && session['access_secret']
    current_user ||= client.user
  end

  def ensure_domain
    return unless Rails.env.production?
    if request.env['HTTP_HOST'] != APP_DOMAIN
      redirect_to "http://#{APP_DOMAIN}", :status => 301
    end
  end
  
  def client
    Twitter.configure do |config|
      config.consumer_key = ENV['CONSUMER_KEY']
      config.consumer_secret = ENV['CONSUMER_SECRET']
      config.oauth_token = session['access_token']
      config.oauth_token_secret = session['access_secret']
    end
    @client ||= Twitter::Client.new
  end
end
