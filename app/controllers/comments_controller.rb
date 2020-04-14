class CommentsController < ApplicationController
  def index
   
    @comments = Comment.all
  end

  def show
      @comment = Comment.find(params[:id])
  end

  def new
  end

  def create
    @comment = Comment.create(comment_params)
    
    redirect_to comment_path(@comment)
  end

  private

  def comment_params
    params.require(:comment).permit(:name, :username, :body, :user_id)
  end

end


