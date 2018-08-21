class AuditionsController < ApplicationController

  def index
    @auditions = Audition.all
  end

  def show
    @audition = Audition.find(params[:id])
  end

  def destroy
    @audition = Audition.destroy(params[:id])
    redirect_to auditions_path
  end

end
