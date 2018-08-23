class PostsController < ApplicationController
  before_action :set_event, only: [:new, :create]

  def new
    @post = Post.new
    authorize @post
  end

  def create
    @user = current_user
    @post = Post.new(post_params)
    authorize @post
    @post.user = @user
    @post.event = @event
    if @post.save!
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  private
  def set_event
    @event = Event.find(params[:event_id])
  end

  def post_params
    params.require(:post).permit(:content)
  end
end
