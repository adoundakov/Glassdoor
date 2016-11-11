class Api::PostingsController < ApplicationController
  def index
    case params[:search_type]
    when "SAVED"
      @postings = current_user.saved_postings.includes(:company)
    when "APPLIED"
      @postings = current_user.applied_postings.includes(:company)
    when "SEARCH"
      @postings = Posting.search_by_title(params[:query]).includes(:company)
    else
      @postings = Posting.all.includes(:company)
    end
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
    params.require(:posting).permit(:company_id,
                                    :title,
                                    :position,
                                    :description)
  end
end
