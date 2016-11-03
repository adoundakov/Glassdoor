class Api::PostingApplicationsController < ApplicationController
  def index
    @posting_applications = PostingApplication.where(user_id: current_user.id)
  end

  def create
    @posting_application = PostingApplication.new(application_params)
    @posting_application.posting_id = params[:posting_id]
    @posting_application.user_id = current_user.id

    if @posting_application.save
      render 'api/posting_applications/index' # maybe replace with success message?
    else
      render json: @posting_application.errors.full_messages
    end
  end

  private

  def application_params
    params.require(:posting_application).permit(:resume)
  end
end
