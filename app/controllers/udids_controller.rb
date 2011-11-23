class UdidsController < ApplicationController
  def index
    @udids = Udid.all
  end

  def show
    @udid = Udid.find(params[:id])
  end

  def new
    @udid = Udid.new
  end

  def edit
    @udid = Udid.find(params[:id])
  end

  def create
    @udid = Udid.new(params[:udid])

    if @udid.save
      redirect_to @udid, :notice => 'Udid was successfully created.'
    else
      render :action => "new"
    end
  end

  def update
    @udid = Udid.find(params[:id])

    if @udid.update_attributes(params[:udid])
      redirect_to @udid, :notice => 'Udid was successfully updated.'
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
