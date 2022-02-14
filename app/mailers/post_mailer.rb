class PostMailer < ApplicationMailer
    default from: 'notification@gmail.com'
    def new_response
        @post = params[:post]
        @comment = params[:comment]
        @greeting = @comment.reply
        mail(to: @post.user.email, subject: 'your post got a comment')
        
    end
end
