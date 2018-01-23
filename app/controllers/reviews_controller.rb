class ReviewsController < ApplicationController

  def home

  end

  # Create
  def new
    @review =  Review.new
  end

  def create
    review = Review.create review_params
    redirect_to reviews_path
  end

  # Read
  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find params[:id]
  end

  # Edit/Update
  def edit
    @review = Review.find params[:id]
  end

  def update
    review = Review.find params[:id]
    review.update review_params

    redirect_to review_path
  end

  #
  def destroy
    Review.destroy params[:id]
    redirect_to reviews_path


  end


  private

  def review_params
    params.require(:review).permit(:title, :body, :rating, :user_id, :restaurant_id )

  end

end
