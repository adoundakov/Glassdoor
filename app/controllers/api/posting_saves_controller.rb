class Api::PostingSavesController < ApplicationController
  
  before_action :redirect_unless_logged_in

  def index
    @posting_saves = PostingSave.where(user_id: current_user.id)
  end

  def create
    @posting_save = PostingSave.new(posting_save_params)
    @posting_save.user_id = current_user.id

    if @posting_save.save
      render :show
    else
      render json: @posting_save.errors.full_messages
    end
  end

  def destroy
    @posting_save = PostingSave.find(params[:id])
    @posting_save.destroy!
    render "api/posting_saves/index"
  end

  private

  def posting_save_params
    params.require(:posting_save).permit(:posting_id)
  end
end
