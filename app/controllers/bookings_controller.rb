class BookingsController < ApplicationController

  before_action :find_booking, only: [:show]

  def index
    @bookings = policy_scope(Booking)
    authorize @bookings
    @review = Review.new
    # authorize @bookings
  end

  def show
    @booking = Booking.find(params[:id])
    @star = @booking.star
    authorize @booking
  end

  def new
    @star = Star.find(params[:star_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    authorize @booking
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
