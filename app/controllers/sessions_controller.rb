class SessionsController < ApplicationController

def new
  render :new
end

def create
  @actor = Actor.find_by ({username: params[:username]})
  @production_company = ProductionCompany.find_by ({username: params[:username]})
  if !!@actor && @actor.authentiate(params[:password])
    flash[:notice] = "Success"
    session[:actor_id] = @actor.id #creates hash in session
    redirect_to @actor
  elsif
    !!@production_company && @production_company.authentiate(params[:password])
    flash[:notice] = "Success"
    session[:production_company_id] = @production_company.id
    redirect_to @production_company
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
