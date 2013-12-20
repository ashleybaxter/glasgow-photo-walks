class StaticController < ApplicationController
	def index
		@walk = Walk.last
		@hash = Gmaps4rails.build_markers(@walk) do |walk, marker|
  	marker.lat walk.latitude
  	marker.lng walk.longitude
  end
	end
end
