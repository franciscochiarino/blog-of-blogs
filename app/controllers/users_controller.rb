require 'faker'

class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    @user = User.friendly.find(params[:id])
    @posts = @user.posts
  end

  def create
    generate_avatar if params[:user][:avatar_url].nil?

    @user = User.new(permitted_params)
    
    if @user.save
      perform_login_action(params[:user][:email], params[:user][:password])
    else
      render :new
    end
  end

  private

  def permitted_params
    params.require(:user).permit(:blog_name, :first_name, :last_name, :avatar_url, :email, :password)
  end

  def generate_avatar
    params[:user][:avatar_url] = Faker::Avatar.image(slug: params[:user][:first_name], size: "200x200")
  end
end
