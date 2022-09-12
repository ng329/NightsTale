class ReviewsController < ApplicationController
  before_action :set_event

  def create
    @review = Review.new(review_params)
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
    redirect_to "/profile", status: :see_other
  end

  def update
    @review = Review.find(params[:id])
    @review.update(review_params)
    redirect_back(fallback_location: root_path)
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def set_event
    @event = Event.find(params[:event_id])
  end
end
