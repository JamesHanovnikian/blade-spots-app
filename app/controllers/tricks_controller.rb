class TricksController < ApplicationController
  def index
    tricks = Trick.where(spot_id: params[:spot_id])
    render json: tricks
  end

  def create
    trick = Trick.new(
      user_id: current_user.id,
      content: params[:content],
      spot_id: params[:spot_id],
    )
    trick.save
    render json: {
      "user_id": trick.user_id,
      "content": trick.content,
      "spot_id": trick.spot_id,
      "created_at": trick.created_at,
      "updated_at": trick.updated_at,
      "username": trick.user.username,
    }
  end

  def show
    trick = Trick.find_by(id: params[:id])
    render json: trick.as_json
  end
end
