class SearchController < ApplicationController
  def show
    if params["q"]
      q = params["q"].gsub(/[@]+/,'')
      @users = TwitterUser.find_all_by_screen_name(q)
      
      if (!@users || @users.empty?) then
        redirect_to :controller => "public", :action => "not_found"
      else
        puts "HERE!!!!!!!"
        redirect_to :controller => "twitter_users", :action => "show", :id => @users[0].screen_name
      end
      
      # render :json => @users
    end
  end
end
