class BookingsController < ApplicationController
  def create
    @booking = Booking.new(start_time: booking_params[:start_time], number_of_people: booking_params[:number_of_people] )
    @event = Event.find(params[:event_id])
    @booking.user = current_user
    @booking.event = @event
    @booking.total_price = calculate_price(@event.price_per_person, @booking.number_of_people)
    if @booking.save
      link_booking_to_friends
      redirect_to user_path(current_user)
    else
      render 'events/show', status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_time, :number_of_people, friends: [])
  end

  def calculate_price(price, people)
    total = people.nil? ? 0 : (price * people)
    return '%.2f' % total.round(2)
  end

  def link_booking_to_friends
    booking_params[:friends].each do |friend|
      unless friend.empty?
        friend = User.find_by(username: friend)
        FriendBooking.create(user: friend, booking: @booking)
      end
    end
  end
end
