class PlacesController < ApplicationController
  before_action :set_place, only: %i[show edit update]

  def index
    @places = Place.all
  end

  def show
    @promotion = Promotion.new
  end

  def edit
    place_genres = Genre.where.not(id: [@place.genres.pluck(:id)]).map do |genre|
      PlaceGenre.new(genre: genre, place: current_place)
    end
    @all_genres = place_genres + @place.place_genres
  end

  def update
    @place.place_genres.destroy_all
    genre_ids = params[:place][:genre_ids].split(',').map(&:to_i)
    genre_ids.each do |genre_id|
      PlaceGenre.create!(place: current_place, genre: Genre.find_by(id: genre_id))
    end
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
