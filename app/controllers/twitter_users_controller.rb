class TwitterUsersController < ApplicationController
  def show
    @user = TwitterUser.find_by_param(params["id"])
    
    if (@user == nil)
      redirect_to :controller => "public", :action => "not_found"
    end
    
  end

end
