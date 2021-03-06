class StarsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    @stars = policy_scope(Star).geocoded


    if params[:query].present?
      @stars = Star.search_by_name_and_more(params[:query])
    end

    @markers = @stars.map do |star|
      {
        lat: star.latitude,
        lng: star.longitude
      }

    end

    # if params[:search] && params[:search][:name] && !params[:search][:name].empty?
    #   @stars = @stars.where(name: params[:search][:name])
    # end

    # if params[:search] && params[:search][:city]  && !params[:search][:city].empty?
    #   @stars = @stars.where(city: params[:search][:city])
    # end

    # if params[:search] && params[:search][:category] && !params[:search][:category].empty?
    #   @stars = @stars.where(category: params[:search][:category])
    # end

    # if params[:search] && params[:search][:price] && !params[:search][:price].empty?
    #   @stars = @stars.where(price: params[:search][:price])
    # end

    # if params[:search] && params[:search][:sex] && !params[:search][:sex].empty?
    #   @stars = @stars.where(sex: params[:search][:sex])
    # end

    # if params[:search] && params[:search][:size] && !params[:search][:size].empty?
    #   @stars = @stars.where(size: params[:search][:size])
    # end
    # if params[:search] && params[:search][:size] && !params[:search][:size].empty?
    #   @stars = @stars.where(size: params[:search][:size])
    # end
    authorize @stars

  end

  def show
    @star = Star.find(params[:id])
    @booking = Booking.new
    @booking.star = @star
    @reviews = policy_scope(Review)
    authorize @star
  end

  def new
    @star = Star.new
    authorize @star
  end

  def create
    @star = Star.new(star_params)
    @star.user = current_user
     authorize @star
    if @star.save
      redirect_to star_path(@star)
    else
      render :new
    end
  end

  def edit

    @star = Star.find(params[:id])
    authorize @star
  end

  def update
    @star = Star.find(params[:id])
    authorize @star
    @star.update(star_params)
    redirect_to star_path(@star)
  end

  def destroy
    @star = Star.find(params[:id])
    authorize @star
    @star.destroy
    redirect_to stars_path
  end

  private

  def search

  end

  def star_params
    params.require(:star).permit(:name, :city, :category, :price, :gender, :size, photos: [])
  end
end
