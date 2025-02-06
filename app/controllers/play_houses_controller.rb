class PlayHousesController < ApplicationController
  def index
    @playhouses = PlayHouse.all
  end

  def new
  end

  private

  def playhouse_params
    params.require(:play_house).permit(:name, :phone, :description, :timing, location_attributes: [:name, :area, :city, :state, :zip] )
  end
end
