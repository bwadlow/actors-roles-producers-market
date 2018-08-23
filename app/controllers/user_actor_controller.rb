class UserActorController < ApplicationController
  skip_before_action :authorized, only: [:new, :create, :show]
  before_action :find_user, only: [:show]

def show
  render :show
end

def profile
  render :show
end

def new
  @useractor = UserActor.new
  render :new
end

def create
  @useractor = User.create(useractor_params)
  if @useractor.valid?
    flash[:notice] = "Signup successful! Welcome, #{@useractor.username}"
    session[:user_id] = @useractor.id
    redirect_to useractor_path(@useractor)
  else
    render :new
  end
end

def edit
  render :edit
end

def update
  if @useractor.update(useractor_params)
    flash[:notice] = "Successfully updated profile"
    redirect_to @useractor
  else
    render :edit
  end
end

def destroy
  @useractor.destroy
  flash[:notice] = "Deleted account for #{@useractor.username}"
  redirect_to new_useractor_path
end

private
def find_user
  @user = UserActor.find(params[:id])
end

def useractor_params
  params.require(:useractor).permit(:username, :password, :profile_photo)
end
end
