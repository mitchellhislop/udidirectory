class UdidsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @user = current_user
    @udids = current_user.udids.all
    @friends = TwitterUser.find_all_by_twitter_id(client.friend_ids.collection, :include => [:udids])
  end

  def new
    @udid = current_user.udids.new
  end

  def create
    @udid = current_user.udids.new(params[:udid])
    @udid.twitter_user = current_user

    if @udid.save
      redirect_to udids_url, :notice => 'Saved, you should feel special because you are!'
    else
      render :action => "new"
    end
  end

  def update
    @udid = current_user.udids.find(params[:id])

    if @udid.update_attributes(params[:udid])
      redirect_to udids_url, :notice => 'Noted, saved, compiled, processed.'
    else
      render :action => "edit"
    end
  end

  def destroy
    @udid = current_user.udids.find(params[:id])
    @udid.destroy
    redirect_to udids_url
  end
end
