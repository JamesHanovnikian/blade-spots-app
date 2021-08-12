class TricksController < ApplicationController
  def index
    tricks = Trick.where(spot_id: params[:spot_id])
    render json: tricks.as_json
  end

  def create
    trick = Trick.new(
      user_id: current_user.id,
      content: params[:content],
      spot_id: params[:spot_id],
    )
    trick.save
    render json: trick.as_json
  end

  def show
    trick = Trick.find_by(id: params[:id])
    render json: trick.as_json
  end
end
