class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # Log the user in and redirect to the user's show page.
      log_in user
      redirect_to parking_view_path
    else
      # Create an error message.
      flash.now[:danger] = 'Invalid email or password' # Not quite right!
      render 'static_pages/home'
    end
  end

  def destroy
    session[:user_id] = nil
    flash.now[:success] = 'Logout Successful'
    redirect_to static_pages_home_path
  end
end
