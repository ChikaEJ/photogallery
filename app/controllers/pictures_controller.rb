class PicturesController < InheritedResources::Base

  private

    def picture_params
      params.require(:picture).permit(:title, :image, :user_id)
    end
end

