class PostsController < ApplicationController
  respond_to :json
  # GET /posts
  def index
    @post = Post.all
    render :json => @post
  end

  # GET /posts/1
  def show
    @post = Post.find(params[:id])
    render :json => @post
  end

  # POST /posts
  def create
    @post = Post.create(params[:post])
    if @post.save
      render :json => @post, :status => 201
    else
      render :json => {:errors => @post.errors.full_messages}, :status => 400
    end
  end

  # PUT /posts/1
  def update
    @post = Post.find(params[:id])
    if(@post.update_attributes(params[:post]))
      render :json => @post, :status => 204
    else
      render :json => {:errors => @post.errors.full_messages}, :status => 400
    end
  end

  # DELETE /posts/1
  def destroy
    @post = Post.find(params[:id]).destroy
    head :no_content
  end
end
