class Api::ReviewsController < ApplicationController
  before_action :redirect_unless_logged_in

  def index
    if params[:search_type] == 'AUTHORED'
      @reviews = current_user.reviews
    else
      @reviews = Review.where(company_id: params[:company_id])
    end
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    @review.company_id = params[:company_id]
    if @review.save
      @company = @review.company
      render "api/companies/show"
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
