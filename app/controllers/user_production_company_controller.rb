class UserProductionCompanyController < ApplicationController
  skip_before_action :authorized, only: [:new, :create, :show]
  before_action :find_user, only: [:show]

def show
  render :show
end

def profile
  render :show
end

def new
  @userproductioncompany = UserProductionCompany.new
  render :new
end

def create
  @userproductioncompany = UserProductionCompany.create(userproductioncompany_params)
  if @userproductioncompany.valid?
    flash[:notice] = "Signup successful! Welcome, #{@userproductioncompany.username}"
    session[:user_id] = @userproductioncompany.id
    redirect_to userproductioncompany_path(@userproductioncompany)
  else
    render :new
  end
end

def edit
  render :edit
end

def update
  if @userproductioncompany.update(userproductioncompany_params)
    flash[:notice] = "Successfully updated profile"
    redirect_to @userproductioncompany
  else
    render :edit
  end
end

def destroy
  @userproductioncompany.destroy
  flash[:notice] = "Deleted account for #{@userproductioncompany.username}"
  redirect_to new_userproductioncompany_path
end

private
def find_user
  @user = UserProductionCompany.find(params[:id])
end

def userproductioncompany_params
  params.require(:userproductioncompany).permit(:username, :password, :profile_photo)
end
end
