class PlacesController < ApplicationController
  before_action :set_place, only: %i[show edit update]
  skip_before_action :authenticate!, only: :index

  def index
    if params[:query].present?
      sql_query = "title ILIKE :query OR address ILIKE :query OR genres.name ILIKE :query"
      @places = Place.joins(:genres).where(sql_query, query: "%#{params[:query]}%").distinct
    else
      @places = Place.all
    end
    @markers = @places.geocoded.map do |place|
      {
        lat: place.latitude,
        lng: place.longitude,
        info_window: render_to_string(partial: "info_window", locals: { place: place })
      }
    end
  end

  def show
    @promotion = Promotion.new
    @markers = [{
      lat: @place.latitude,
      lng: @place.longitude,
      info_window: render_to_string(partial: "info_window", locals: { place: @place })
      }]
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
