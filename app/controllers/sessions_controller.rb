class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:username])

    if user
      session[:current_user_id] = user.id
      redirect_to students_path
    else
      flash[:message] = 'A user with that username could not be found in our records'
      redirect_to login_path
    end
  end

  def destroy
    session.clear
    flash[:message] = 'Thanks for using our application!'
    redirect_to login_path

  end
end
