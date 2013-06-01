class UsersController < ApplicationController
  respond_to :json
  # GET /users
  def index
    @user = User.all
    render :json => @user
  end

  # GET /users/1
  def show
    @user = User.find(params[:id])
    render :json => @user
  end

  # POST /users
  def create
    @user = User.create(params[:user])
    if @user.save
      render :json => @user, :status => 201
    else
      render :json => {:errors => @user.errors.full_messages}, :status => 400
    end
  end

  # PUT /users/1
  def update
    @user = User.find(params[:id])
    if(@user.update_attributes(params[:user]))
      render :json => @user, :status => 204
    else
      render :json => {:errors => @user.errors.full_messages}, :status => 400
    end
  end

  # DELETE /users/1
  def destroy
    @user = User.find(params[:id]).destroy
    if(@user.valid?)
      render :json => @user, :status => 204
    else
      render :json => @user, :status => 303
    end
  end
end
