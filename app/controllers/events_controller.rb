class EventsController < ApplicationController
  def index
    @events = Event.all

    # creating markers for map:
    @markers = @events.geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        info_window: render_to_string(partial:
          "info_window", locals: {event: event})
      }
    end
  end

  def show
    @event = Event.find(params[:id])
    @booking = Booking.new
  end
end
