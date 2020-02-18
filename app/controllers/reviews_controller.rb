class ReviewsController < ApplicationController

  before_action :set_review

  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new

  end

  def create
    @review = Review.new(review_params)
    @booking = Booking.find(params[:booking_id])
    @review.booking = @booking
    if @review.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def destroy
    @booking = @review.booking
    @review.destroy
    redirect_to booking_path(@booking)
  end

  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:description, :note, :reservation_id)
  end

end
