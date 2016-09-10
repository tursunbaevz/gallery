class CommentsController < ApplicationController
	def new
	  @posts = Post.all
	  @comment = Comment.new
	end

 	def create
  		@post = Post.find(params[:comment][:post_id])
  		@comment = @post.comments.build(comment_params)
  		@comment.user_id = current_user.id
	  	if @comment.save	
	  		current_user.score += 10
  			current_user.save  	
		 	redirect_to root_url
		end
	end
  
  	def destroy
        @post = Post.find_by(params[:id])
        @comment = Comment.find_by(params[:id])
        @comment.destroy
        redirect_to users_path
    end


	private

	def comment_params
		params.require(:comment).permit(:content, :post_id, :user_id)
	end

end
