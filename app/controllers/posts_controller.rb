class PostsController < ApplicationController

  before_action :check_for_login

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find params[:id]
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.create post_params
    @current_user.posts << post
    if params[:file].present?
      req = Cloudinary::Uploader.upload params[:file]
      post.image = req["public_id"]
      post.save
    end
    redirect_to post
  end

  def destroy
    post = Post.find params[:id]
    post.destroy
    redirect_to posts_path #index page
  end

  private
  def post_params
    params.require(:post).permit(:title, :description, :image)
  end
end
