class CommentsController < ApplicationController
  before_action :authenticate_user!
    before_action :set_post
    def create
       @comment = @post.comments.build(comment_params)
       @comment.user_id = current_user.id
       if  @comment.save
       PostMailer.with(comment: @comment , post: @post).new_response.deliver_now
        respond_to do |format|
        format.js
        end
        else
            format.html {render :new, status: :unprocessable_entity}
       end 
    end

    private

    def set_post
    @post = Post.find(params[:post_id])        
    end
    def comment_params
        params.require(:comment).permit(:reply)
    end
end
