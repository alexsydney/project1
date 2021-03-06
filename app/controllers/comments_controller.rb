class CommentsController < ApplicationController

  before_action :check_if_logged_in, only: [:new, :create]


  def home

  end

  # Create
  def new
    @comment = Comment.new
    @restaurant = Restaurant.find params[:restaurant_id]
    @review = Review.find params[:review_id]
  end

  def create
    comment = Comment.new comment_params
    comment.user = @current_user
    comment.review_id = params[:review_id]
    # raise 'hell'
    if comment.save
      # raise 'hell'
      redirect_to restaurant_path( params[:restaurant_id] )
    else
      flash[:error] = "Error creating coment. Try again."
      flash[:error_messages] = comment.errors.full_messages
    end
  end

  # Read
  def index
     @comments = Comment.all

     # redirect_to comments_path
  end

  def show
    # raise 'hell'
    @comment = Comment.find params[:id]

    redirect_to comment_path
  end

  # Update/edit
  def edit


    @comment = Comment.find params[:id]
    @review = Review.find params[:review_id]
    @restaurant = Restaurant.find params[:restaurant_id]
  end

  def update

    comment = Comment.find params[:id]
    comment.update comment_params

    redirect_to restaurant_path(comment.review.restaurant)

  end

  # delete
  def destroy

    # restaurant = Restaurant.find params[:id]
    comment = Comment.find params[:id]
    # review=   Review.find params[:id]
    #
    # redirect_to restaurant_path(review.restaurant)

    # @restaurant = params[:restaurant_id]
    # @review = params[:review_id]
    # @comment = params[:id]

    Comment.destroy params[:id]
    redirect_to restaurant_path(comment.review.restaurant)
    # redirect_to restaurant_path
    # redirect_to comments_path

  end

  private

  def comment_params
    params.require(:comment).permit(:body )
  end

end
