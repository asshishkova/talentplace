class PlacesController < ApplicationController
  before_action :set_place, only: %i[show edit update]

  def index
    @places = Place.all
  end

  def show
  end

  def edit
  end

  def update
    @place.update(place_params)
    redirect_to place_path(@place)
  end
end

private

def place_params
  params.require(:place).permit(:title, :address, :website, :description, :photo, :email)
end

def set_place
  begin
    @place = Place.find(params[:id])
  rescue
    p "place not found"
  end
end
