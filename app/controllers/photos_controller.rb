class PhotosController < ApplicationController
  before_filter :require_permission, only: :new
  
  def index
    @photo = Photo.all
  end

  def new
    @photo = Photo.new(:photographer_id => params[:photographer_id])
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
    params.require(:photo).permit(:image, :photographer_id)
  end
  
  def require_permission
    unless current_photographer 
      redirect_to root_path
      flash[:notice] = "Sorry, but you have to sign in to upload photos."
    end
  end
end
