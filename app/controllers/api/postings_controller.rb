class Api::PostingsController < ApplicationController
  def index
    @postings = Posting.all
  end

  def show
    @posting = Posting.find(params[:id])
  end

  # TODO: Implement These later
  #
  # def update
  # end
  #
  # def destroy
  # end

  private

  def posting_params
    params.permit(:posting).require(:company_id,
                                    :title,
                                    :position,
                                    :description)
  end
end
