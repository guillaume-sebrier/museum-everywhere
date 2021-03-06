class OffersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]
  before_action :set_offer, only: %i[show destroy update edit]

  def index
    if params[:search]
      @offers = policy_scope(Offer).where(category: params[:search][:category])
      @markers = @offers.geocoded.map do |offer|
        {
          lat: offer.latitude,
          lng: offer.longitude
        }
      end
    else
      @offers = policy_scope(Offer)
      @markers = @offers.geocoded.map do |offer|
        {
          lat: offer.latitude,
          lng: offer.longitude
        }
      end
    end
  end

  def show
    authorize @offer
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    authorize @offer
    if @offer.save
      flash[:notice] = "Your new visit offer is posted!"
      redirect_to offer_path(@offer)
    else
      render :new
    end
  end

  def destroy
  end

  def new
    @offer = Offer.new
    authorize @offer
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
    params.require(:offer).permit(:title, :description, :price, :duration, :address, :category, :capacity, photos: [])
  end
end
