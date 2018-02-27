class SessionsController < ApplicationController

  def new
    if session[:user_id]
      redirect_to current_user
    end
    @user = User.new

  end

  def create
    user = User.find_by(username: session_params[:username])
    if user && user[:password] != nil
      session[:user_id] = user.id
      redirect_to user
    else

      redirect_to new_session_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to new_session_path
  end
  private

  def session_params
    params.require(:user).permit(:username, :password)
  end

end
