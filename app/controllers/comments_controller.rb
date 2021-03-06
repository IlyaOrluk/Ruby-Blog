class CommentsController < ApplicationController

    def create
        @post = Post.find(params[:post_id])
        @comment = @post.comments.build(comment_params)
        @comment.user = current_user
        @comment.save
        redirect_to post_path(@post)
    end
    def destroy
        @post = Post.find(params[:id])
        @comment = @post.comments.find(params[:post_id])
        @comment.destroy
        redirect_to post_path(@post)
    end

    private def comment_params
        params.require(:comment).permit(:user_id, :comment)
    end
end
