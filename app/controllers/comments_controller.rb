class CommentsController < ApplicationController

  def home

  end

  # Create
  def new
    @comment = Comment.new
  end

  def create
    restaurant = Restaurant.create comment_params

    redirect_to comments_path
  end

  # Read
  def index
     @comments = Comment.all

     redirect_to comments_path
  end

  def show
    @comment = Comment.find params[:id]

    redirect_to comment_path
  end

  # Update/edit
  def edit
     @comment = Comment.find params[:id]

  end

  def update
    comment = Comment.find params[:id]
    comment.update comment_path

    redirect_to comment_path
  end

  # delete
  def destroy
    Comment.destroy find params[:id]

    redirect_to comment_path
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :user_id, :review_id )
  end

end
