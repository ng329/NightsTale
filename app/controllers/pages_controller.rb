class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def profile
    @user = current_user
    if @user == current_user
      @bookings = @user.bookings
      @favourites = @user.favourites
    else
      redirect_to "/"
    end
  end
end
