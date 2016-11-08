class Api::PostingApplicationsController < ApplicationController
  before_action :redirect_unless_logged_in, only: [:index]

  def create
    @posting_application = PostingApplication.new(application_params)
    @posting_application.posting_id = params[:posting_id]
    @posting_application.user_id = current_user.id

    if @posting_application.save
      @posting = Posting.find(@posting_application.posting_id)
      render 'api/postings/show'
    else
      render json: @posting_application.errors.full_messages
    end
  end

  private

  def application_params
    params.require(:posting_application).permit(:resume)
  end
end
