class SessionsController < ApplicationController

def new
  render :new
end

def create
  # byebug
  @actor = Actor.find_by ({username: params[:username]})
  @production_company = ProductionCompany.find_by ({username: params[:username]})
  if !!@actor && @actor.authenticate(params[:password])
    flash[:notice] = "Welcome!"
    session[:actor_id] = @actor.id #creates hash in session
    redirect_to @actor
  elsif
    !!@production_company && @production_company.authenticate(params[:password])
    flash[:notice] = "Welcome!"
    session[:production_company_id] = @production_company.id
    redirect_to @production_company
  else
    flash[:notice] = "Invalid username or password"
    redirect_to login_path
  end
end

  def destroy
    if session[:actor_id]
      session.delete(:actor_id)
    else
      session.delete(:production_company_id)
    end
    redirect_to home_path
  end
end
