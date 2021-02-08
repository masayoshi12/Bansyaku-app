class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to bansyaku_path(@review.bansyaku)
    else
      @bansyaku = @review.bansyaku
      @reviews = @bansyaku.reviews
      render "bansyakus/show"
    end
  end

  private

  def review_params
    params.require(:review).permit(:comment).merge(user_id: current_user.id, bansyaku_id: params[:bansyaku_id])
  end
  
end
