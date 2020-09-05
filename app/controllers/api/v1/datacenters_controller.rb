class Api::V1::DatacentersController < ApplicationController
   def index
    all_posts = Datacenter.all
    render json: all_posts
  end

  def show
    post = Datacenter.where(id: params[:id])
    render json: post
  end

  private

  def datacenter_params
    params.permit(:name, :language_id)
  end
end

