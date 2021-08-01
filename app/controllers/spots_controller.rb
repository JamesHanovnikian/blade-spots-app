class SpotsController < ApplicationController
  def index
    spots = Spot.all
    render json: spots.as_json
  end

  def create
    spot = Spot.new(
      name: params[:name],
      address: params[:address],
      bust: params[:bust],
      description: params[:description],
      category: params[:category],
      user_id: params[:user_id],
      image_url: params[:image_url],
    )
    spot.save
    render json: spot.as_json
  end

  def show
    spot = Spot.find_by(id: params[:id])
    render json: spot.as_json
  end
end
