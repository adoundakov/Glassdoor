class Api::ReviewsController < ApplicationController
  before_action :redirect_unless_logged_in, only: [:create]

  def index
    if params[:search_type] == 'AUTHORED'
      @reviews = current_user.reviews.includes(:company)
    else
      @reviews = Review.where(company_id: params[:company_id]).includes(:company)
    end
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    @review.company_id = params[:company_id]

    if @review.save
      @reviews = @review.company.reviews
      render "api/reviews/index"
    else
      render json: @review.errors.full_messages, status: 400
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :current_employee, :job_title,
                                   :title, :pros, :cons, :advice)
  end
end
