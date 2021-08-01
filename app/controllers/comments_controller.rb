class CommentsController < ApplicationController
  def index
    comments = Comment.all
    render json: comments.as_json
  end

  def create
    comment = Comment.new(
      spot_id: params[:spot_id],
      user_id: params[:user_id],
      content: params[:content],

    )
    comment.save
    render json: comment.as_json
  end
end
