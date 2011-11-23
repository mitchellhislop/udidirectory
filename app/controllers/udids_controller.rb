class UdidsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @udids = current_user.udids.all
  end

  def show
    @udid = current_user.udids.find(params[:id])
  end

  def new
    @udid = current_user.udids.new
  end

  def edit
    @udid = current_user.udids.find(params[:id])
  end

  def create
    @udid = current_user.udids.new(params[:udid])

    if @udid.save
      redirect_to @udid, :notice => 'Udid was successfully created.'
    else
      render :action => "new"
    end
  end

  def update
    @udid = current_user.udids.find(params[:id])

    if @udid.update_attributes(params[:udid])
      redirect_to @udid, :notice => 'Udid was successfully updated.'
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
