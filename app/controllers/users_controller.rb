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
    my_bookings = Booking.where(start_time: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week)
    friend_bookings = []
    current_user.friendBookings.all.each do |friendsbooking|
      if friendsbooking.booking.start_time.between?(start_date.beginning_of_month.beginning_of_week, start_date.end_of_month.end_of_week)
        friend_bookings << friendsbooking.booking
      end
    end
    raise
    return my_bookings + friend_bookings
  end
end
