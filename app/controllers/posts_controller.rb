class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @user = User.friendly.find(params[:user_id])
  end

  def show
    @post = Post.friendly.find(params[:id])
  end

  def create
    @user = User.friendly.find(params[:user_id])
    @post = @user.posts.new(permitted_params)
    
    if @post.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  private

  def permitted_params
    params.require(:post).permit(:title, :body, :user_id)
  end
end