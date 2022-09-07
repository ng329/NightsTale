class EventsController < ApplicationController
  def index
    if params["tag"].present?
      @events = Event.search_tags(params["tag"])
    else
      @events = Event.all
    end

    # creating markers for map:
    @markers = add_markers_to_map(@events)
  end

  def show
    @event = Event.find(params[:id])
    @booking = Booking.new
    if current_user.favourites.empty?
      @favourite = nil
    else
      current_user.favourites.each { |favourite| @favourite = favourite if favourite.event_id == @event.id }
    end
  end

  private

  def add_markers_to_map(events)
    markers = events.geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        info_window: render_to_string(partial:
          "info_window", locals: {event: event})
      }
    end
    return markers
  end
end
