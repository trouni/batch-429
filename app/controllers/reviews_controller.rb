class ReviewsController < ApplicationController
  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
      respond_to do |format|
        # format.html { redirect_to restaurant_path(@restaurant) }
        format.json do
          render json: {
            review: @review,
            reviewHTML: render_to_string(
              partial: 'reviews/card',
              locals: { review: @review },
              formats: :html
            )
          }
        end
      end
    else
      render 'restaurants/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end