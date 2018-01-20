class UsersController < ApplicationController

  before_action :check_if_logged_in, only: [:profile]

  before_action :check_if_admin, only: [:index]

  def profile
    @user = @current_user
    render :show
  end

  # Create
  def new
    @user = User.new
  end

  def create
    user = User.create user_params
    if user.id.present?
      session[:user_id] = user.id
      redirect_to profile_path
    else
      flash[:error] = "Error creating account. Try again."
      flash[:error_messages] = user.errors.full_messages

      redirect_to new_user_path
    end
  end

  # Read
  def index
     @users = User.all
  end

  def show
     @user = User.find params[:id]
  end

  # Update/Edit
  def edit
    @user = User.find params[:id]
  end

  def update
    user = User.find params[:id]
    user.update user_params

    redirect_to user_path

  end
  #
  # def patch
  #   user = User.find params[:id]
  #   user.update user_params
  #
  #   redirect_to user_path
  #
  # end

  # Delete
  def destroy
    User.destroy params[:id]

    redirect_to user_path
    # redirect_to users_path
  end

  private

  def user_params

   params.require(:user).permit(:first_name, :last_name, :email, :location, :password, :password_confirmation, :is_admin)

  end

end
