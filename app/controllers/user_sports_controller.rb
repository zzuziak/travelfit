class UserSportsController < ApplicationController
before_action :set_user, only: [:show, :create, :update]

  def show
    @user_sport = UserSport.new
    authorize @user_sport
  end

  def create
    @user_sport = UserSport.new(user_sport_params)
    authorize @user_sport
    @sports = policy_scope(Sport)
    @user_sport.user = @user
    @user_sport.sport = Sport.find(params[:user_sport][:sport])

    @user_sport.save!
  end

  def update
    @user_sport = UserSport.new(user_sport_params)
    @user_sport.sport = Sport.find(params[:user_sport][:sport])
    authorize @user_sport
    @user_sport.update(user_sport_params)
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end


  def user_sport_params
    params.require(:user_sport).permit(:level, :favourite)
  end

end
