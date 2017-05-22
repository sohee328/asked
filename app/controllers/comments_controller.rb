class CommentsController < ApplicationController
    def create
        @comment = Comment.new
        @comment.content = params[:input_comment]
        @comment.question_id = params[:question_id]
        @comment.save
        redirect_to "/questions/show/#{params[:question_id]}"
    end
    
    def delete
        @comment = Comment.find(params[:comment_id])
        @comment.delete
        redirect_to "/questions/show/#{params[:question_id]}"
    end
end
