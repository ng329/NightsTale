class FavouritesController < ApplicationController
  before_action :set_event

  def create
    @favourite = Favourite.new
    @favourite.user = current_user
    @favourite.event = @event

    if @favourite.save?
      redirect_to "/profile"
    else
      render event_path(@event), status: :unprocessable_entity
    end
  end

  def destroy
    @favourite = favourite.find(params(:id))
    @favourite.destroy
    redirect_to event_path(@event), status: :see_other
  end

  private

  def set_event
    @event = Event.find(params(:event_id))
  end
end
