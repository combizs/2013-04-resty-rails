class GroupsController < ApplicationController
  respond_to :json
  # GET /groups
  def index
    @group = Group.all
    render :json => @group
  end

  # GET /groups/1
  def show
    @group = Group.find(params[:id])
    render :json => @group
  end

  # POST /groups
  def create
    @group = Group.create(params[:group])
    if @group.save
      render :json => @group, :status => 201
    else
      render :json => {:errors => @group.errors.full_messages}, :status => 400
    end
  end

  # PUT /groups/1
  def update
    @group = Group.find(params[:id])
    if(@group.update_attributes(params[:group]))
      render :json => @group, :status => 204
    else
      render :json => {:errors => @group.errors.full_messages}, :status => 400
    end
  end

  # DELETE /groups/1
  def destroy
    @group = Group.find(params[:id]).destroy
    head :no_content
  end
end
