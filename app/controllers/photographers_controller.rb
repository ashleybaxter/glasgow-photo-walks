class PhotographersController < ApplicationController

	private

	def app_params
    params.require(:photographer).permit(:first_name, :last_name)
  end
   
end
