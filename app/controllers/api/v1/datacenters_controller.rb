class Api::V1::DatacentersController < ApplicationController
   def index
    all_posts = Datacenter.all
    render json: all_posts
  end

  def create
    post = Datacenter.create(datacenter_params)
    render json: post
  end

  def show
    post = Datacenter.find(params[:id])
    render json: post
  end

  def update
    post = Datacenter.find(params[:id])
    post.update(datacenter_params)
    render json: post
  end

  def destroy
    Datacenter.destroy(params[:id])
    head :ok
  end

  private

  def datacenter_params
    params.permit(:name, :language_id)
  end
end

