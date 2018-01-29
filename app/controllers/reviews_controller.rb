class ReviewsController < ApplicationController

  def home

  end

  # Create
  def new
    @review =  Review.new
    @restaurant = Restaurant.find params[:restaurant_id]
  end

  def create
    review = Review.new review_params

    review.user = @current_user
    restaurant = Restaurant.find params[:restaurant_id]
    review.restaurant_id = restaurant.id
    # raise 'hell'
    if review.save
      redirect_to restaurant_path( params[:restaurant_id] )
    else
      flash[:error] = "Error creating review. Try again."
      flash[:error_messages] = review.errors.full_messages
    end
      # raise 'hell'
  end

  # Read
  def index
    @reviews = Review.all
    # raise 'hell'
  end

  def show
    @review = Review.find params[:id]
  end

  # Edit/Update
  def edit
    @review = Review.find params[:id]
    @restaurant = Restaurant.find params[:restaurant_id]
  end

  def update
    review = Review.find params[:id]
    review.update review_params

    redirect_to restaurant_path(review.restaurant)
  end

  #
  def destroy
    review = Review.find params[:id]
    Review.destroy params[:id]
    redirect_to restaurant_path(review.restaurant)




  end


  private

  def review_params
    params.require(:review).permit(:title, :body, :rating )

  end

end
