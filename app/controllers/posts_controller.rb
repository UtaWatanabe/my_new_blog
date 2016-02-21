class PostsController < ApplicationController
def index
    @post = Post.all
end
def new
    @post = Post.new
end
  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to @post
  end

  def edit
    @post = Post.find(params[:id])
  end

def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to @post
end

def destroy
    @post = Post.find(params[:id])
    @post.destroy
    # viewを持たないので消去の挙動は確認できない｡ページそのものが消去されているので､redirectが必要
    redirect_to posts_url

end

private
  def post_params
    # ここで各種パラメータを定義
    params.require(:post).permit(
        :title, :body, :category,
      )

  end

end
