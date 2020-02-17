class BookingsController < ApplicationController

  before_action :find_booking, only: [:show, :create]

  def index
    @bookings = Booking.all
  end

  def show
    @review = @booking.reviews
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to bookings_path
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
    params.require(:booking).permit(:time, :from, :to, :user_id, :star_id)
  end

end