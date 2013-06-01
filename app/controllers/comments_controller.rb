class CommentsController < ApplicationController
  respond_to :json
  # GET /comments
  def index
    @comment = Comment.all
    respond_with(@comment)
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
      if(@comment.valid?)
        render :json => {:errors =>@comment.errors.full_messages}, :status => 422
      else
      render :json => {:errors =>@comment.errors.full_messages}, :status => 400
      end
    end
  end

  # PUT /comments/1
  def update
    @comment = Comment.update(params[:content])
  end

  # DELETE /comments/1
  def destroy
    @comment = Comment.destroy
  end
end
