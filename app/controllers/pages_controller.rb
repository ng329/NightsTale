class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def profile
    @user = current_user
    if @user == current_user
      # @bookings = @user.bookings
      @favourites = @user.favourites
      @bookings = set_booking_dates
    else
      redirect_to "/"
    end
  end

  private

  def set_booking_dates
    start_date = params.fetch(:start_date, Date.today).to_date

    # For a monthly view:
    return Booking.where(start_time: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week)
  end
end
