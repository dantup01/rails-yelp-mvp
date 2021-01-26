class RestaurantsController < ApplicationController
  def index
    @restaurant = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
  end

  private

  def restaurant_params
    @restaurant = Restaurant.find(params[:id])
  end

  def set_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

end
