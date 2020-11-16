class OffersController < ApplicationController
  before_action :set_offer, only: %i[show destroy update edit]

  def index
    @offers = Offer.all
  end

  def show; end

  def create
    @offer = Offer.new(offer_params)
    if @offer.save
      redirect_to offer_path(@offer)
    else
      render :new
    end
  end

  def destroy
  end

  def new
    @offer = Offer.new
  end

  def update
  end

  def edit
  end

  # def search
  #   @search = params["search"]
  #   @offers = Offer.where("name ILIKE ?", "%#{@search[:name]}%")
  # end

  private

  def set_offer
    @offer = Offer.find(params[:id])
  end

  def offer_params
    # params.require(:offer).permit(:name, :dose, :photo)
  end
end
