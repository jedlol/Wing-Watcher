class CommentsController < ApplicationController
  before_action :authenticate_user!
  # before_action :set_post

  def index
      @user = User.find(params[:user_id])
      # @post = @user.posts.find(params[:post_id])
      @post = Post.find(params[:post_id])
      @comments = @post.comments
      render :index
    end

  def show
      @post = Post.find(params[:post_id])
      @comment = @post.comments.order(created_at: :desc)
      render :show
  end

  def new
      @post = Post.find(params[:post_id])
      @comment = Comment.new
      render :new
  end



  # def create
  #     @post = Post.find(params[:post_id])
  #     @comment = @post.comments.create(params.require(:comment).permit(:comment, :user_id, :post_id, :description))
  #     @comment.users = current.user
  #     if @comment.save
  #       flash[:success] = "Comment saved successfully"
  #       redirect_to post_comments_url(@post)
  #     else
  #       flash.now[:error] = "Comment could not be saved"
  #       render :new
  #     end
  #   end




##new add##
  def create
    @user = User.find(params[:user_id])
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    @comment.user = current_user

    if @comment.save
      flash[:success] = "Comment saved successfully"
      redirect_to post_comments_url(@user, @post)
    else
      flash.now[:error] = "Comment could not be saved"
      render :new
    end
  end

  def comment_params
    params.require(:comment).permit(:description)
  end

  # def set_post
  #   @post = Post.find(params[:post_id])
  # end
##new add##

  def edit
      @post = Post.find(params[:post_id])
      @comment = @post.comments.find(params[:id])
      render :edit
  end

  def update
      @post = Post.find(params[:post_id])
      @comment = @post.comments.find(params[:id])
      if @comment.update(params.require(:comment).permit(:comment, :user_id, :post_id, :description))
        flash[:success] = "Comment updated successfully"
        redirect_to post_comment_url(@post, @comment)
      else
        flash.now[:error] = "Comment could not be updated"
        render :edit
      end
    end

  def destroy
      @post = Post.find(params[:post_id])
      @comment = @post.comments.find(params[:id])
      @comment.destroy
      flash[:success] = "Comment deleted successfully"
      redirect_to post_comments_url(@post)
  end

end