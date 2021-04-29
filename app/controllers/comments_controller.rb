class CommentsController < ApplicationController

  before_action :check_for_login

  def new
    @post = Post.find params[:post_id]
    @comment = Comment.new
  end

  def create
    post = Post.find params[:post_id]
    comment = Comment.create comment_params
    post.comments << comment
    @current_user.comments << comment
    redirect_to post
  end

  def show
    @comment = Comment.find params[:id]
  end

  def destroy
    comment = Comment.find params[:id]
    post = Post.find params[:post_id]
    comment.destroy
    redirect_to post 
  end

  private
  def comment_params
    params.require(:comment).permit(:remark)
  end
end
