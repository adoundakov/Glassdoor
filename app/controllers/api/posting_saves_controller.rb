class Api::PostingSavesController < ApplicationController

  before_action :redirect_unless_logged_in

  def create
    @posting_save = PostingSave.new
    @posting_save.posting_id = params[:posting_id]
    @posting_save.user_id = current_user.id
    @posting_save.save!
    @posting = Posting.find(params[:posting_id])
    render 'api/postings/show'
  end

  def destroy
    @posting_save = PostingSave.where("posting_id = ? AND user_id = ?", params[:postingId], current_user.id).first
    @posting_save.destroy!
    @posting = Posting.find(params[:postingId])
    render 'api/postings/show'
  end
end
