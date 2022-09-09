class ParksController < ApplicationController 
  def index 
    @state = params[:state]
    @parks = ParkFacade.create_parks(@state)
  end
end