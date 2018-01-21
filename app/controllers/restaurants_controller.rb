class RestaurantsController < ApplicationController

  def home

  end

  # Create
  def new
      @restaurant = Restaurant.new
  end

  def create
      restaurant = Restaurant.create restaurant_params

      redirect_to restaurants_path
  end

  # Read
  def index
      @restaurants = Restaurant.all
      redirect_to restaurants_path
  end

  def show
     @restaurant = Restaurant.find params[:id]
     redirect_to restaurant_path
  end

  # Update/edit
  def edit
     @restaurant = Restaurant.find params[:id]
  end

  def update
    restaurant = Restaurant.find params[:id]
    restaurant.update restaurant_params

    redirect_to restaurant_path

  end

  # Delete
  def destroy
    Restaurant.destroy params[:id]

    redirect_to restaurant_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :location, :url_website, :user_id )

  end

end
