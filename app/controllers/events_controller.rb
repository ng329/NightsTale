class EventsController < ApplicationController
  def index
    # raise
    if params["tags"].present?
      # raise
      tags = "#{params['tags']['food']} #{params['tags']['escape']} #{params['tags']['adventure']} #{params['tags']['outdoor']} #{params['tags']['theatre']} #{params['tags']['cinema']} #{params['tags']['gaming']}"
      @events = Event.search_tags(tags)
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

  def popular
    count = Favourite.group(:event_id).count
    count = count.sort_by { |_k, v| v }
    top = count.first(10)
    ids = []
    top.each { |pair| ids << pair[0] }
    @events = []
    ids.each { |id| @events << Event.find(id) }
  end

  private

  def add_markers_to_map(events)
    markers = events.geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        info_window: render_to_string(partial:
          "info_window", locals: {event: event}),
        image_url: helpers.asset_url("/app/assets/images/pin.png")
      }
    end
    return markers
  end
end
