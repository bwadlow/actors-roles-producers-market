class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
    @bookings = @bookings.by_sex(params[:sex_query]) if params[:sex_query].present?
    @bookings = @bookings.by_age(params[:age_query]) if params[:age_query].present?
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
    @sex_array = ['male', 'female', 'other']
    @show_name = params[:show_name]
    @prod_name = params[:name]
    @prod_id = params[:prod_id]

  end

  def create
    @sex_array = ['other', 'male', 'female']
    @booking = Booking.create!(booking_params)
    if @booking.save
      redirect_to production_company_path(@booking.production_company)
    else
      render :new
    end
  end

  def edit
    @sex_array = ['male', 'female', 'other']
    @booking = Booking.find(params[:id])
    @auditions = Audition.all.select do |audition|
        audition.booking_id == @booking.id
      end
      @audition_actor = @auditions.map do |audition|
        audition.actor.name
      end
    render :edit
  end

  def update
    @booking = Booking.update(booking_params)
    if @booking
      redirect_to booking_path(@booking)
    else
      render :edit
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    flash[:notice] = 'Successfully deleted booking'
    redirect_to production_company_path(@booking.production_company)
  end




  private

  def booking_params
    params.require(:booking).permit(:salary, :duration_days, :show_name, :role_name, :available, :actor_id, :production_company_id, :booking_id, :sex, :search, :commit)
  end

end#end of class
