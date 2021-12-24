class SessionsController < ApplicationController
  def new
  end

  def create
    perform_login_action(params[:session][:email], params[:session][:password])
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: 'You have been logged out.'
  end
end
