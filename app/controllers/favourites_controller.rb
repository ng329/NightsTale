class FavouritesController < ApplicationController
  before_action :set_event, :set_favourite

  # def create
  #   @favourite = Favourite.new
  #   @favourite.user = current_user
  #   @favourite.event = @event

  #   if @favourite.save?
  #     redirect_to "/profile"
  #   else
  #     render event_path(@event), status: :unprocessable_entity
  #   end
  # end

  # def destroy
  #   @favourite = favourite.find(params(:id))
  #   @favourite.destroy
  #   redirect_to event_path(@event), status: :see_other
  # end

  def add_to_favourites
    if @favourite.nil?
      Favourite.create(user: current_user, event: @event)
    else
      @favourite.destroy
    end
    redirect_to event_path(@event), status: :see_other
  end

  private

  def set_event
    @event = Event.find(params[:event_id])
  end

  def set_favourite
    if current_user.favourites.empty?
      @favourite = nil
    else
      current_user.favourites.each { |favourite| @favourite = favourite if favourite.event_id == @event.id }
    end
  end
end
