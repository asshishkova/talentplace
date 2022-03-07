class PromotionsController < ApplicationController
  before_action :set_promotion, only: %i[show destroy]

  def new
    @promotion = Promotion.new
    @place = Place.find(params[:place_id])
  end

  def create
    @promotion = Promotion.new(promotion_params)
    @promotion.talent = current_talent
    @promotion.place = Place.find(params[:place_id])

    if @promotion.save
      redirect_to talent_dashboard_path, notice: 'Promotion was sent!'
    else
      render :new
    end
  end

  def destroy
    @promotion.destroy
    redirect_to talent_dashboard_path
  end

  private

  def set_promotion
    @promotion = Promotion.find(params[:id])
  end

  def promotion_params
    params.require(:promotion).permit(:message)
  end
end
