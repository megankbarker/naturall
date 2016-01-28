class SightingsController < ApplicationController
	def index
		 @sightings = Sighting.all
	end

	def new
	end
end
