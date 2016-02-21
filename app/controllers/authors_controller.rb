class AuthorsController < ApplicationController

def author
  @author = Author.find(params[:id])
end

end

private
  def post_params
    # ここで各種パラメータを定義
    params.require(:post).permit(
        :name, :description, :image_url,
      )

  end
