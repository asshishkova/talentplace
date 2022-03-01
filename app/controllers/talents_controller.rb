class TalentsController < ApplicationController
  def index
    @talents = Talent.all
  end
  def show
    @talent = Talent.find(params[:id])
  end

  def edit
    @talent = Talent.find(params[:id])
  end

  def update
    @talent = Talent.find(params[:id])
    @talent.update(talent_params)
    redirect_to talent_path(@talent)
  end
end

private

def talent_params
  params.require(:talent).permit(:name, :description, :address, :youtube_link, :instagram_link, :spotify_link, :price)
end
