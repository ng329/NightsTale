class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @event = Event.find(params[:event_id])
    @booking.user = current_user
    @booking.event = @event
    @booking.total_price = calculate_price(@event.price_per_person, @booking.number_of_people)
    if @booking.save
      redirect_to "/profile"
    else
      render event_path(@event), status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :time, :number_of_people)
  end

  def calculate_price(price, people)
    total = price * people
    return '%.2f' % total.round(2)
  end
end
