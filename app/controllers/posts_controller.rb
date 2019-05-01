class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
      @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(strong_params)
    if @post.errors.empty?
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(strong_params)
    if @post.errors.empty?
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  def destroy
    Post.destroy(params[:id])
    redirect_to posts_path
  end

  private

  def strong_params
    params.require(:post).permit(:title, :author, :content, :topic_id)
  end

end
