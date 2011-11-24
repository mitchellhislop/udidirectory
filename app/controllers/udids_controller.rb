class UdidsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @udids = Udid.all
  end

  def new
    @udid = Udid.new
  end

  def edit
    @udid = Udid.find(params[:id])
  end

  def create
    @udid = Udid.new(params[:udid])
    @udid.user = current_user

    if @udid.save
      redirect_to udids_url, :notice => 'Saved, you should feel special because you are!'
    else
      render :action => "new"
    end
  end

  def update
    @udid = Udid.find(params[:id])

    if @udid.update_attributes(params[:udid])
      redirect_to udids_url, :notice => 'Noted, saved, compiled, processed.'
    else
      render :action => "edit"
    end
  end

  def destroy
    @udid = Udid.find(params[:id])
    @udid.destroy
    redirect_to udids_url
  end
end
