class StatusesController < ApplicationController
  respond_to :json
  # GET /statuses
  def index
    @status = Status.all
    render :json => @status
  end

  # GET /statuses/1
  def show
    @status = Status.find(params[:id])
    render :json => @status
  end

  # POST /statuses
  def create
    @status = Status.create(params[:status])
    if @status.save
      render :json => @status, :status => 201
    else
      render :json => {:errors => @status.errors.full_messages}, :status => 400
    end
  end

  # PUT /statuses/1
  def update
    @status = Status.find(params[:id])
    if(@status.update_attributes(params[:status]))
      render :json => @status, :status => 204
    else
      render :json => {:errors => @status.errors.full_messages}, :status => 400
    end
  end

  # DELETE /statuses/1
  def destroy
    @status = Status.find(params[:id]).destroy
    if(@status.valid?)
      render :json => @status, :status => 204
    else
      render :json => @status, :status => 303
    end
  end
end
