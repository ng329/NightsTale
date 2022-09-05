class EventsController < ApplicationController
  def index
    @events = Event.near()
  end

  def show
    @event = Event.find(params[:id])
    @booking = Booking.new
  end
end
