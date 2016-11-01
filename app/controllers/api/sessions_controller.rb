class Api::SessionsController < ApplicationController

  def create
    @user = User.find_by_credentials(user_params[:username],
                                     user_params[:password])
    if @user
      login!(@user)
      render 'api/users/show'
    else
      error = ["Invalid Username/Password combination"]
      render json: error, status: 401
    end
  end

  def destroy
   if current_user
     logout!
     render json: {}
   else
     render json: ["No logged in User"], status: 404
   end
 end

  private

  def user_params
    params.require(:user).permit(:username,
                                 :email,
                                 :password,
                                 :is_employer,
                                 :company_id)
  end
end
