class DislikesController < ApplicationController
    def create
        @dislike = current_user.dislikes.new(dislike_params)
        if !@dislike.save
            flash[:notice] = @dislike.errors.full_messages.to_sentence
        end

        redirect_back(fallback_location: root_path)
    end

    def destroy
        @dislike = current_user.dislikes.find(params[:id])
        post = @dislike.post
        @dislike.destroy
        redirect_back(fallback_location: root_path)
    end


    private

    def dislike_params
        params.require(:dislike).permit(:post_id)
    end
end
