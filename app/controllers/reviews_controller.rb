class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def create
    @review = Review.new(review_param)
    @review.save
    redirect_to restaurant_path(@restaurant)
  end

   def review_params
    params.require(:review).permit(:content, :rating)
  end

end
