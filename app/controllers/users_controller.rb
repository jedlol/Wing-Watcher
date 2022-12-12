class UsersController < ApplicationController

	def index
		@users = User.all
		render :index
	end

	def new
		@user = User.new
		render :new
	end

	def show
		@user = User.find(params[:id])
		@posts = @user.posts
		@saved_posts = @user.saved_posts
		render :show
	end

	def edit
		@user = User.find(params[:id])
		render :edit
	end

	def create
		@user = User.new(params.require(:user).permit(:username, :password, :email, :image, :description))
	    if @user.save
			flash[:success] = "New User Created!"
			redirect_to users_url
		  else
			flash.now[:error] = "User creation failed"
			render :new
		end
	end

	def update
		@user = User.find(params[:id])
		if @user.update(params.require(:user).permit(:username, :password, :email, :image, :description))
		  flash[:success] = "Your information successfully updated!"
		  redirect_to user_url(@user)
		else
		  flash.now[:error] = "Your information update failed"
		  render :edit
		end
	end

end
