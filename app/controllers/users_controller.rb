class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(permitted_params)
    
    if @user.save
      redirect_to root_path, notice: 'User created.'
    else
      render :new
    end
  end

  private

  def permitted_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
