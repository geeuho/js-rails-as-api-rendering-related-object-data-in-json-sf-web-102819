class SightingsController < ApplicationController
    def show
        sighting = Sighting.find_by(id: params[:id])
        # render json: {id: sighting.id, bird: sighting.bird, location: sighting.location}
        render json: sighting, include: [:bird, :location], except: [:updated_at]
    end
end