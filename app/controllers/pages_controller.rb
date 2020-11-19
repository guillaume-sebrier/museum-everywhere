class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @categories = Offer.distinct.pluck(:category)
  end

  def dashboard
    # access to current user
  end
end
