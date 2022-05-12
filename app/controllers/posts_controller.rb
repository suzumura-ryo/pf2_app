class PostsController < ApplicationController
  def index
    @posts=Post.all
  end

  def search_result
    p "==========="
    p params[:search][:title]
    p "==========="
    @posts = Post.where('title LIKE ?',"%#{params[:search][:title]}%")
  end
end
