class SightingsController < ApplicationController
  
  
  def show
    sighting = Sighting.find(params[:id])
    #add in options of attributes
      options = {
        include: [:bord, :location]
      }

    # old 
    # render json: @sighting.to_json(:include => {:bird => {:only =>[:name, :species]},
    # :location => {:only =>[:latitude, :longitude]}},
    # :except => [:updated_at])

    #new 
    render json: SightingSerializer.new(sighting)

  end

  # SightingSerialiser can be used on ALL SightingsController actions

  def index
    sighting = Sighting.all 
    render json: SightingSerializer.new(sighting)
  end

end