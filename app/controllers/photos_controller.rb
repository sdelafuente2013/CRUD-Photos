class PhotosController < ApplicationController
  def index
    @photos = Photo.all
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    @photo.save

    if @photo.save
      redirect_to photos_path, notice: "Photo was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def new
    @photo = Photo.new
  end

  def destroy
    @photo = Photo.all.find(params[:id])
    @photo.destroy

    redirect_to photos_path
  end

  def show
    @photo = Photo.all.find(params[:id])
  end

  def update
    @photo = Photo.all.find(params[:id])
    @photo.title = photo_params[:title]
    @photo.picture = photo_params[:picture]
    @photo.save

    redirect_to photos_path
  end

  private

  def photo_params
    params.require(:photo).permit(:title, :picture)
  end
end
