class CommentsController < ApplicationController

	def new
		@comment = Comment.new
	end

	# def index
	# 	@comment = Comment.all
	# end
	def create
		# puts "id: #{}"

		# @comment.article = Article.find(params[:comment][:article_id]) #cant fetch the article id

		
		@comment = Comment.new(comment_params)
		@comment.user_id = current_user.id
		# puts " #{@article.inspect}"
		if @comment.save
			puts "if"
			flash[:success] = "Comment successfully added"
			# @article = Article.find(@comment.article_id)

			redirect_to "/articles/#{@comment.article_id}"
			# redirect_to article_path(@article)
		else
			puts "else"
			flash[:danger] = "cant comment."
		end
	end

	private
	def comment_params
		params.require(:comment).permit(:article_id, :content)
	end
end