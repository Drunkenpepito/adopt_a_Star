class ReviewsController < ApplicationController

  before_action :set_review , only: [:show]


  # renvoie toutes les revues sur une même star
  def index
    @booking = Booking.find(params[:booking_id])
    @star = @booking.star
    @reviews = policy_scope(Review)
    authorize @reviews
  end

  def new
    @booking = Booking.find(params[:booking_id])
    @star = @booking.star
    @review = Review.new
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @booking = Booking.find(params[:booking_id])
    @review.booking = @booking
    authorize @review
    if @review.save!
      redirect_to star_booking_path(@booking.star, @booking)
    else
      render :new
    end
  end

  def destroy
    @booking = @review.booking
    @review.destroy
    redirect_to booking_path(@booking)
    authorize @review
  end

  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:description, :note, :reservation_id)
  end

end
