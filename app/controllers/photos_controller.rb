class PhotosController < ApplicationController

  before_action :authenticate_user!

  def create
    @condo = Condo.find(params[:condo_id])
    @condo.photos.create(photo_params.merge(user: current_user))
    redirect_to condo_path(@condo)
  end


  private


  def photo_params
    params.require(:photo).permit(:caption, :condoimage)
  end

end
