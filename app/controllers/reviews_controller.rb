class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @event = Event.find(params[:event_id])
    @review.event = @event
    @review.user = current_user
    if @review.save
      redirect_to event_path(@event)
    else
      render "events/show", status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to events_path(@review.events), status: :see_other
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
