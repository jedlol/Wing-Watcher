class PostsController < ApplicationController
	def index
		@posts = Post.order(created_at: :desc)
		render :home
	end

	def favorite
		@posts = Post.order(rating: :desc)
		render :favorite
	end

	def edit
		@user = User.find(params[:user_id])
		@post = @user.posts.find(params[:id])
		render :edit
	end

	def update
		@user = current_user
		@post = @user.posts.find(params[:id])
		if @post.update(params.require(:post).permit(:rating, :review, :restaurant, :image, :sauce, :price, :dish, :area, :waiting_time))
		  flash[:success] = "Your review successfully updated!"
		  redirect_to user_url(@user)
		else
		  flash.now[:error] = "Your review update failed"
		  render :edit
		end
	end

	def create
		@user = User.find(params[:user_id])
		@post = @user.posts.new(params.require(:post).permit(:name, :rating, :review, :restaurant, :image, :sauce, :price, :dish, :area, :waiting_time))
		if @post.save
			flash[:success] = "Post successfully published"
			redirect_to user_url(@user)
		else
			flash.now[:error] = "Post submission failed"
			render :new
		end
	end

	def save
		@user = User.find(params[:user_id])
		@post = @user.posts.find(params[:id])
		@saved_post = SavedPost.create(user: @post.user, post: @post, save_user: current_user)
		redirect_to user_url(@current_user)
	end

	def show
		@user = User.find(params[:user_id])
		@post = @user.posts.find(params[:id])
		render :detail
	end

	def new
		@user = User.find(params[:user_id])
		@post = Post.new
		render :new
	end

end