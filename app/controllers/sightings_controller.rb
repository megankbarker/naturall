class SightingsController < ApplicationController
	def index
		 @sightings = Sighting.all
	end

	def new
		@sighting = Sighting.new
	end

	def create
		Sighting.create(sighting_params) # sends item to database
		redirect_to root_path
	end

	private

	def sighting_params # pulls info from sighting form
		params.require(:sighting).permit(:species, :description, :address)
	end
end
