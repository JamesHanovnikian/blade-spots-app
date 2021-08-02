class SpotsController < ApplicationController
  def index
    if current_user
      spots = Spot.all
      render json: spots.as_json
    else
      render json: { message: "User must be logged in to view all Spots" }
    end
  end

  def create
    if current_user
      spot = Spot.new(
        name: params[:name],
        address: params[:address],
        bust: params[:bust],
        description: params[:description],
        category: params[:category],
        user_id: current_user.id,
        image_url: params[:image_url],
      )
      spot.save
      render json: spot.as_json
    else
      render json: { message: "User must be logged in to add a new spot" }
    end
  end

  def show
    spot = Spot.find_by(id: params[:id])
    render json: spot.as_json
  end
end
