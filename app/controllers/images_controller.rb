class ImagesController < ApplicationController

  before_action :check_if_logged_in, only: [:new, :create, :edit, :update, :destroy]
  def home

  end

  # Create
  def new
    @image = Image.new
    @restaurant = Restaurant.find params[:restaurant_id]
  end

  def create
    restaurant = Restaurant.find params[:restaurant_id]
    image = restaurant.images.new image_params
    # image = Image.new image_params
    # image.restaurant = restaurant

    if params[:file].present?
       req = Cloudinary::Uploader.upload(params[:file])
       image.image_url = req["public_id"]
    end
    # raise 'img'

    image.user = @current_user
    if image.save
      redirect_to restaurant_path( restaurant )
    else
      flash[:errors] =
      image.errors.full_messages
      redirect_to new_image_path
    end
  end

  # Read
  def index
     @images = Image.all

  end

  def show
     @image = Image.find params[:id]

     redirect_to image_path
  end

  #Update/Edit/Patch
  def edit
    @restaurant = Restaurant.find params[:restaurant_id]
    @image = Image.find params[:id]
    
  end

  def update
    image = Image.find params[:id]
    restaurant = Restaurant.find params[:restaurant_id]
    image.user = @current_user

    image.update image_params

    # if params[:file].present?
    #   req = Cloudinary::Uploader.upload(params[:file])
    #
    #   user.image = req["public_id"]
    # end
    #   user.update_attributes(user_params)
    #   user.save

    redirect_to image_path
  end

  # delete
  def destroy
    Image.destroy params[:id]

    redirect_to images_path

  end

  private

  def image_params
    params.require(:image).permit(:title, :description, :user_id, :restaurant_id, :image_url )
  end

end
