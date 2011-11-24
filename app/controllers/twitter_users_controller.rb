class TwitterUsersController < ApplicationController
  def show
    @user = TwitterUser.find_by_param(params["id"])
  end

end
