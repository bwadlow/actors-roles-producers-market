class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @sex_array = ['male', 'female', 'other']
    @booking = Booking.new
    @show_name = params[:show_name]
    @prod_name = params[:name]
    @prod_id = params[:prod_id]

  end

  def create
    @sex_array = ['male', 'female', 'other']
    @booking = Booking.create!(booking_params)
    if @booking.save
      redirect_to production_company_path(@booking.production_company)
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
    render :edit
  end

  def update
    if @booking.update(booking_params)
      redirect_to @booking
    else
      render :edit
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
  end




  private

  def booking_params
    params.require(:booking).permit(:salary, :duration_days, :show_name, :role_name, :available?, :actor_id, :production_company_id, :booking_id, :sex)
  end

end#end of class
