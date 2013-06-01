class SubscriptionsController < ApplicationController
  respond_to :json
  # GET /subscriptions
  def index
    @subscription = Subscription.all
    render :json => @subscription
  end

  # GET /subscriptions/1
  def show
    @subscription = Subscription.find(params[:id])
    render :json => @subscription
  end

  # POST /subscriptions
  def create
    @subscription = Subscription.create(params[:subscription])
    if @subscription.save
      render :json => @subscription, :status => 201
    else
      render :json => {:errors => @subscription.errors.full_messages}, :status => 400
    end
  end

  # PUT /subscriptions/1
  def update
    @subscription = Subscription.find(params[:id])
    if(@subscription.update_attributes(params[:subscription]))
      render :json => @subscription, :status => 204
    else
      render :json => {:errors => @subscription.errors.full_messages}, :status => 400
    end
  end

  # DELETE /subscriptions/1
  def destroy
    @subscription = Subscription.find(params[:id]).destroy
    head :no_content
  end
end

