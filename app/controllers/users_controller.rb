class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.friendly.find(params[:id])
    @posts = @user.posts
  end

  def create
    @user = User.new(permitted_params)
    
    if @user.save
      perform_login_action(params[:user][:email], params[:user][:password])
    else
      render :new
    end
  end

  private

  def permitted_params
    params.require(:user).permit(:blog_name, :first_name, :last_name, :email, :password)
  end
end
