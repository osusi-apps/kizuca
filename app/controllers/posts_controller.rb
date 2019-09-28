class PostsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    @post = Post.new(content: params[:content])
    @post.save
    redirect_to("/posts/index")
  end

  def edit
  end
end
