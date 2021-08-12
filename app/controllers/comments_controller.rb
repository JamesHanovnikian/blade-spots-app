class CommentsController < ApplicationController
  def index
    comments = Comment.where(spot_id: params[:spot_id])
    render json: comments.as_json
  end

  def create
    comment = Comment.new(
      spot_id: params[:spot_id],
      user_id: current_user.id,
      content: params[:content],

    )
    comment.save
    render json: comment.as_json
  end

  def show
    comment = Comment.find_by(id: params[:id])
    render json = comment.as_json
  end
end
