class PhotosController < ApplicationController
  def index
    @photos = Photo.all
    @photo = Photo.new()
  end

  def create
    @photo = Photo.new(photo_params)
    @photo.save

    redirect_to photos_path
  end

  # def destroy
  #   redirect_to photos_path
  # end

  private

  def photo_params
    params.require(:photo).permit(:title, :picture)
  end
end
