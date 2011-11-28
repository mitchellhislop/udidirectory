class SearchController < ApplicationController
  def show
    if params["q"]
      q = params["q"].gsub(/[@]+/,'')
      @users = TwitterUser.where([ "lower(screen_name) = ?", q.downcase ])
      
      if (!@users || @users.empty?) then
        redirect_to :controller => "public", :action => "not_found"
      else
        redirect_to :controller => "twitter_users", :action => "show", :id => @users[0].screen_name
      end
      
      # render :json => @users
    end
  end
end
