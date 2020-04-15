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
    
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    @comment.recipe_id = Recipe.last.id
    @comment.save
    
    redirect_to comment_path(@comment)
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)

    redirect_to comment_path(@comment)
  end

  def destroy
    Comment.find(params[:id]).destroy
    redirect_to "/comments"
  end

  private

  def comment_params
    params.require(:comment).permit(:name, :username, :body, :user_id)
  end

end


