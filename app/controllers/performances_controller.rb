class PerformancesController < ApplicationController
  def index
    @performance = Performance.new
    @room = Room.find(params[:room_id])
  end

  def create
  end
end