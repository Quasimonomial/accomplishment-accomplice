class SessionsController < ApplicationController
  def new
    render :new
  end

  def create
    user = User.find_by_credentials(
      session_params[:username],
      session_params[:password]
    )

    if user
      sign_in(user)
      redirect_to new_user_url
    else
      flash.now[:errors] = ["Invalid Username or Password"]
      render :new
    end
  end

  def destroy
    sign_out
    redirect_to new_session_url
  end

  private
  def session_params
    params.require(:user).permit(:email, :password)
  end
end