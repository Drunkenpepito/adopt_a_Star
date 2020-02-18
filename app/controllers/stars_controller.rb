class StarsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    @stars = Star.all

    # if !params[:filter][:city].empty?
    #   @stars = @stars.where(city: params[:filter][:city])
    # end

    # if !params[:filter][:category].empty?
    #   @stars = @stars.where(category: params[:filter][:category])
    # end
  end

  def show
    @star = Star.find(params[:id])
  end

  def new
    @star = Star.new
  end

  def create
    @star = Star.new(star_params)
    if @star.save
      redirect_to star_path(@star)
    else
      render :new
    end
  end

  def edit
    @star = Star.find(params[:id])
  end

  def update
    @star = Star.find(params[:id])
    @star.update(star_params)
    redirect_to star_path(@star)
  end

  def destroy
    @star = Star.find(params[:id])
    @star.destroy
    redirect_to stars_path
  end

  private

  def search

  end

  def star_params
    params.require(:star).permit(:name, :city, :category, :price, :sex, :size, :photo)
  end
end
