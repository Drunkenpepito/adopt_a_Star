class BookingsController < ApplicationController

  before_action :find_booking, only: [:show]

  def index
    @bookings = Booking.all
    # authorize @bookings
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @star = Star.find(params[:star_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.star = Star.find(params[:star_id])
    @booking.user = current_user
    @booking.time =  (@booking.to - @booking.from).to_i
    if @booking.save
      redirect_to stars_path
    else
      render :new
    end
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def find_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:from, :to, :star)
  end

end
