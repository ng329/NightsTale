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
    @event = Event.find(params[:event_id])
    @review.destroy
    redirect_to event_path(@event), status: :see_other
  end

  def update
    @review = Review.find(params[:id])
    @review.update(review_params)
    redirect_to "events/show"
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
