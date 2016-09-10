class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: 'You successfully signed in!'
    else
      flash[:alert] = "yo password is wrong"
      render :new
    end
  end
end
