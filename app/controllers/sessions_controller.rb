class SessionsController < ApplicationController
  def new
  end

  def create
    # 1. find user by the email
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      # 2. if the user exist and the password correct, set the session
      session[:user_id] = user.id
      redirect_to user_url(user), notice: 'Signed in successfully!'
    else
      # 3. else back to login form
      redirect_to sign_in_url, alert: 'Wrong email or password'
    end
  end

  def destroy
    # to logout simply nullify the session
    session[:user_id] = nil
    redirect_to root_url, notice: 'Signed out successfully!'
  end
end
