class UserSportsController < ApplicationController
before_action :set_user, only: [:new, :create]


  def show
    @user_sport = User_sport.new
    authorize @user_sport
  end

  def create
    @user = current_user
    @user_sport = User_sport.new(user_sport_params)
    authorize @user_sport
    @user_sport.user = @user
    @user_sport.sport = @sport
    @user_sport.save!
  end

  def update
    @user_sport.update(user_sport_params)
    authorize @user_sport
  end

  private

  def set_user
    @job = User.find(params[:user_id])
  end

  def user_sport_params
    params.require(:user_sport).permit(:level, :favourite)
  end

end
