class SearchController < ApplicationController
  def show
    if params["q"]
      q = params["q"].gsub(/[@]+/,'')
      @users = TwitterUser.find_all_by_screen_name(q)
      # render :json => @users
    end
  end
end
