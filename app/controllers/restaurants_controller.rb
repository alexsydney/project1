class RestaurantsController < ApplicationController

  before_action :check_if_logged_in, only: [:new, :create, :edit, :update, :destroy]

  def home

  end

  # Create
  def new
      @restaurant = Restaurant.new
  end

  def create
      restaurant = Restaurant.new restaurant_params
      restaurant.user = @current_user
      if restaurant.save
        redirect_to restaurant
      else
        # restaurant could not be saved
        flash[:errors] = restaurant.errors.full_messages
        redirect_to new_restaurant_path
      end
  end

  # Read
  def index
      @restaurants = Restaurant.all
      @locations = @restaurants.map do |g|
        {lat: g.latitude, lng: g.longitude}

      end
  end

  def search
    @results = Restaurant.where('location ILIKE ?', "%#{params[:query]}%")
    # raise 'hell'
   # @results = Restaurant.where('name LIKE ?', "%#{params[:query]}%")


  end

  def show
    # raise 'hell'
     @restaurant = Restaurant.find params[:id]
     # raise 'hell'
     country = 'AU'
     api_key = "cab770f77fb9178ef7b6fc933e3f93ec"

     @near_by = Restaurant.near([@restaurant.latitude, @restaurant.longitude], 2, :units => :km)
     # raise 'hell'

    response = HTTParty.get("http://api.openweathermap.org/data/2.5/weather?q=#{@restaurant.location},#{country}&appid=#{api_key}")
    @data  = response.body
    @temp_min = response['main']['temp_min'] - 273.15
    @temp_max = response['main']['temp_max'] - 273.15
    @humidity = response['main']['humidity']
    @pressure = response['main']['pressure']
    @description = response['main']['description']
    # raise 'hell'
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

    redirect_to restaurants_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :location, :url_website, :user_id )

  end

end
