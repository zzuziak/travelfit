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
    @reply = Reply.new
    if @post.save!
      respond_to do |format|
        format.html { redirect_to event_path(@event) }
        format.js
        # raise
      end
    else
      respond_to do |format|
        format.html { render 'events/show' }
        format.js
        # raise
      end
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
