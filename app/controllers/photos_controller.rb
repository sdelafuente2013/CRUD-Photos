class PhotosController < ApplicationController
  before_action :set_photo, only: %i[ show update destroy ]

  def index
    @photos = Photo.all
  end

  def create
    @photo = Photo.new(photo_params)
    @photo.save

    if @photo.save
      redirect_to photos_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def new
    @photo = Photo.new
  end

  def destroy
    @photo.destroy

    redirect_to photos_path
  end

  def show
  end

  def update
    if @photo.update(photo_params)
      redirect_to photos_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_photo
    @photo = Photo.find(params[:id])
  end

  def photo_params
    params.require(:photo).permit(:title, :picture)
  end
end
