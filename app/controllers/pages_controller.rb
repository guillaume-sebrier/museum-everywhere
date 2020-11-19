class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @categories = Offer.distinct.pluck(:category)
    @no_navbar = true
  end

  def dashboard
    # access to current user
  end
end
