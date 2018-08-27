class ChangeFavouriteToBeStringInUserSports < ActiveRecord::Migration[5.2]
  def change
      change_column :user_sports, :favourite, :string
  end
end
