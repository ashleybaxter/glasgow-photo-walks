class PhotosController < ApplicationController
  def new
    @photo = Photo.new
  end
  
  def create
		@photo = Photo.new(app_params)
	  if @photo.save
      redirect_to root_url
    else
      render('new')
    end
	end
  
  private

	def app_params
    params.require(:photo).permit(:image)
  end
end
