class Api::PostingsController < ApplicationController
  def index
    case params[:search_type]
    when "SAVED"
      @postings = current_user.saved_postings
    when "APPLIED"
      @postings = current_user.applied_postings
    when "SEARCH"
      # Will implement later, PHASE 4
    else
      @postings = Posting.all
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
