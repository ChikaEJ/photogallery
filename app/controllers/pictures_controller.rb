class PicturesController < InheritedResources::Base
  load_and_authorize_resource
  def show
    @picture = Picture.find(params[:id])
    @comments = @picture.comments.all
  end

  private

    def picture_params
      params.require(:picture).permit(:title, :image, :user_id)
    end
end

