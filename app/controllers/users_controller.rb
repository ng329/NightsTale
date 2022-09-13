class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @favourites = @user.favourites
    @bookings = set_booking_dates
  end

  private

  def set_booking_dates
    start_date = params.fetch(:start_date, Date.today).to_date

    # For a monthly view:
    return Booking.where(start_time: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week)
  end
end
