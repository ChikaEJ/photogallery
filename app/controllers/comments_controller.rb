class CommentsController < InheritedResources::Base


  def create
    @picture = Picture.find(params[:picture_id])
    @comment = @picture.comments.create(comment_params)

    redirect_to @picture
  end
  def destroy
    @picture = Picture.find(params[:picture_id])
    @comment =@picture.comments.find(params[:id])
    @comment.destroy

    redirect_to @picture
  end

  private

    def comment_params
      params.require(:comment).permit(:raiting, :user_id, :picture_id, :text)
    end
end

