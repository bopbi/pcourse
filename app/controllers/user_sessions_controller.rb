class UserSessionsController < ApplicationController
  
  def index
    if current_user
      redirect_to :controller => "dashboard"
    end
    redirect_to login_path
  end
  
  def new
    
    if current_user
      redirect_to :controller => "dashboard"
    end
    
    @user_session = UserSession.new
  end
  
  def create
    
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      flash[:notice] = "Successfully Logged In"
      redirect_to :controller => "dashboard"
    else
      render :action => 'new'
    end
  end
  
  def destroy
    @user_session = UserSession.find(params[:id])
    @user_session.destroy
    flash[:notice] = "Successfully Logged Out."
    redirect_to root_url
  end
end
