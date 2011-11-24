class PublicController < ApplicationController
  def index
    if session['access_token'] && session['access_secret']
      @user = client.user
    end
  end
end
