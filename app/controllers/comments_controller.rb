class CommentsController < ApplicationController
  respond_to :json
  # GET /comments
  def index
    @comment = Comment.all
    render :json => @comment
  end

  # GET /comments/1
  def show
    @comment = Comment.find(params[:id])
    render :json => @comment
  end

  # POST /comments
  def create
    @comment = Comment.create(params[:comment])
    if @comment.save
      render :json => @comment, :status => 201
    else
      render :json => {:errors => @comment.errors.full_messages}, :status => 400
    end
  end

  # PUT /comments/1
  def update
    @comment = Comment.find(params[:id])
    if(@comment.update_attributes(params[:comment]))
      render :json => @comment, :status => 204
    else
      render :json => {:errors => @comment.errors.full_messages}, :status => 400
    end
  end

  # DELETE /comments/1
  def destroy
    @comment = Comment.find(params[:id]).destroy
    head :no_content
  end
end
