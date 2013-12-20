class WalksController < ApplicationController
	def new
		@walk = Walk.new
	end

	def create
		@walk = Walk.new(app_params)
	  if @walk.save
      redirect_to @walk
    else
      render('new')
    end
	end

	def show
		@walk = Walk.find(params[:id])
	end

	private

	def app_params
    params.require(:walk).permit(:start_date, :start_time, :end_time, :price)
  end
end
