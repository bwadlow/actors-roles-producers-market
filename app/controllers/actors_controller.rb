class ActorsController < ApplicationController

  def index
    @actors = Actor.all
  end

  def show
    @actor = Actor.find(params[:id])
  end

  def new
    @sex_array = ['male', 'female', 'other']
    @actor = Actor.new
  end

  def create
    @actor = Actor.create(actor_params)
    if @actor
      redirect_to actor_path(@actor)
    else
      render :new
    end
  end

  def destroy
    @actor = Actor.find(params[:id])
    if @actor.destroy
      redirect_to actors_path
    else
      redirect_to actor_path(@actor)
    end
  end

  private

  def actor_params
    params.require(:actor).permit(:name, :age, :sex, :username, :password)
  end

end
