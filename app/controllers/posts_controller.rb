class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def new
    p params
    @post = Post.new
  end

  def create
    p params
    @post = Post.new(params[:post])
    if @post.save
      render :show_key
    else
      render :new
    end
  end

  def edit
    p params
     @post = Post.find(params[:id])
     if @post.key == params[:key]
      render :edit
    else
      @error = "Your key was not found in the database."
      render :show
    end 
  end

  def update
    p params
    @post = Post.find(params[:id])
    if @post.update_attributes(params[:post])
      render :show_key
    else
      render :edit
    end  
  end

end
