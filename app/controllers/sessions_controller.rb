class SessionsController < ApplicationController

def new
  render :new
end

def create
  @user = User.find_by ({username: params[:username]})
  if !!@user && @user.authentiate(params[:password])
    flash[:notice] = "Success"
    session[:user_id] = @user.id #creates hash in session
    redirect_to @user
  else
    flash[:notice] = "Invalid login information"
    redirect_to login_path
  end
end

  def destroy
    session.delete(:user_id)
    redirect_to login_path
  end
end
