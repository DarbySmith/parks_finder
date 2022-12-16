class ParksController < ApplicationController
  def index
    @parks = ParkFacade.park_finder(params[:state])
  end
end