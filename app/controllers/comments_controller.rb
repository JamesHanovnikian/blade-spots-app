class CommentsController < ApplicationController
  def index
    @spots = Spot.find(params[:spot_id])
    # @comment = @spot.comments.all
    # @post = Post.find(params[:post_id])
    # comments = Comment.all
    # render json: comments.as_json
    render json: { message: "Hello!" }
  end

  def create
    @spots = Spot.find(params[:spot_id])
    @comment = @spot.comments.create(params[:comment]).permit(:spot_id, :user_id, :content)
    # comment = Comment.new(
    #   spot_id: params[:spot_id],
    #   user_id: current_user.id,
    #   content: params[:content],

    # )
    # comment.save
    # render json: comment.as_json
  end

  def show
    comment = Comment.find_by(id: params[:id])
    render json = comment.as_json
  end
end
