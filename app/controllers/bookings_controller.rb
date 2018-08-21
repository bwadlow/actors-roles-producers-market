class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
    render :new
  end

  def create
    @booking = Booking.create(booking_params)
    if @booking
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end




  private

  def booking_params
    params.require(:booking).permit(:salary, :duration_days, :show_name, :role_name, :available, :actor_id, :production_company_id)
  end

end#end of class
