class Api::UsersController < ApplicationController
  
  before_action :redirect_unless_logged_in, only: [:show]

  def create
    @user = User.new(user_params)

    if @user.save
      login!(@user)
      render :show
    else
      errors = @user.errors.full_messages
      render json: errors, status: 422
    end
  end

  def show
    @user = User.find(params[:id])
    render :show
  end

  # will implement later, when show pages get added.
  # def update
  # end
  # def destroy
  # end

  private

  def user_params
    params.require(:user).permit(:username,
                                 :email,
                                 :password,
                                 :is_employer,
                                 :company_id)
  end
end
