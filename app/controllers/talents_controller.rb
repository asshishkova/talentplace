class TalentsController < ApplicationController
  before_action :set_talent, only: %i[show edit update]

  def index
    @talents = Talent.all
  end

  def show
  end

  def edit
  end

  def update
    @talent.update(talent_params)
    redirect_to talent_path(@talent)
  end
end

private

def talent_params
  params.require(:talent).permit(:name, :description, :address, :youtube_link, :instagram_link, :spotify_link, :price, :photo)
end

def set_talent
  begin
    @talent = Talent.find(params[:id])
  rescue
    p "talent not found"
  end
end
