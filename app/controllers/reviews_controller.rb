class ReviewsController < ApplicationController
  # before_action :set_review , only: [:show]


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

  def edit
     @review = Review.find(params[:id])
     @star = @review.booking.star
     authorize @review
  end

  def update
     @review = Review.find(params[:id])
     authorize @review
     @review.update(review_params)
     redirect_to star_path(@review.booking.star)
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
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
    @review = Review.find(params[:id])
    @booking = @review.booking
    authorize @review
    @review.destroy
    redirect_to star_path(@booking.star)
  end

  def set_review
    @review = Review.find(params[:id])
  end

  def rank (number)
    if number == 1
      return ⭐️
    elsif number == 2
      return ⭐️⭐️
    elsif number == 3
      return ⭐️⭐️⭐️
    elsif number == 4
      return ⭐️⭐️⭐️⭐️
    elsif number >= 5
      return ⭐️⭐️⭐️⭐️⭐️
    end
  end

  def review_params
    params.require(:review).permit(:description, :note, :reservation_id)
  end

end
