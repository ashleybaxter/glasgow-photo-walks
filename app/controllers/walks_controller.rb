class WalksController < ApplicationController
  load_and_authorize_resource
  
	def new
		@walk = Walk.new
	end

	def create
		@walk = Walk.new(app_params)
	  if @walk.save
      redirect_to root_url
    else
      render('new')
    end
	end

	def edit
    @walk = Walk.find(params[:id])
  end
  
  def update
    @walk = Walk.find(params[:id])
    if @walk.update_attributes(app_params)
      redirect_to root_url
    else
      render('edit')
    end
  end

	private

	def app_params
    params.require(:walk).permit(:latitude, :longitude, :address, :start_date, :start_time, :end_time, :price)
  end
end
