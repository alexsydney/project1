class ImagesController < ApplicationController

  def home

  end

  # Create
  def new
    @image = Image.new
  end

  def create
    image = Image.create image_params
    redirect_to images_path
  end

  # Read
  def index
     @images = Image.all
     redirect_to images_path
  end

  def show
     @image = Image.find params[:id]

     redirect_to image_path
  end

  #Update/Edit/Patch
  def edit
    @image = Image.find params[:id]
  end

  def update
    image = Image.find params[:id]
    image.update image_params
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
