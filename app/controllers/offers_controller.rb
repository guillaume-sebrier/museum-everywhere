class OffersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]
  before_action :set_offer, only: %i[show destroy update edit]

  def index
    if params[:search]
      @offers = policy_scope(Offer).where(category: params[:search][:category])
    else
      @offers = policy_scope(Offer)
    end
    # @offers = policy_scope(Offer)
  end

  def show
    @review = Review.new
    authorize @review
  end

  def create
    @offer = Offer.new(offer_params)
    authorize @offer
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
    params.require(:offer).permit(:title, :description, :price, :address, :category, :capacity, photos: [])
  end
end
