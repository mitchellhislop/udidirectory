class SessionController < ApplicationController
  
  def create
    session[:access_token] = request.env['omniauth.auth']['credentials']['token']
    session[:access_secret] = request.env['omniauth.auth']['credentials']['secret']
    redirect_to :controller => :public, :notice => "Signed in with Twitter!"
  end

  def show
    if session['access_token'] && session['access_secret']
      @user = client.user
    else
      redirect_to failure_path
    end
  end

  def error
    flash[:error] = "Sign in with Twitter failed!"
    redirect_to root_path
  end

  def destroy
    reset_session
    redirect_to root_path, :notice => "Signed out!"
  end

end
