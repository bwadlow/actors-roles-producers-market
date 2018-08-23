class AuditionsController < ApplicationController

  def index
    @auditions = Audition.all
  end

  def show
    @audition = Audition.find(params[:id])
  end

  def edit
    @audition = Audition.find(params[:id])
  end

  def update
    @audition = Audition.update(audition_params)
    if @audition
      redirect_to audition_path(@audition)
    else
      render :edit
    end
  end

  def new
    @audition = Audition.new
    @booking_id = params[:booking_id]
  end

  def create
    @audition = Audition.create(audition_params)
    redirect_to audition_path(@audition)
  end

  def destroy
    @audition = Audition.destroy(params[:id])
    redirect_to auditions_path
  end

  private

  def audition_params
    params.require(:audition).permit(:address, :time, :date, :actor_id, :production_company_id, :booking_id)
  end

end
