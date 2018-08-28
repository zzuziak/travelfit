class RemoveFavouriteFromUserSports < ActiveRecord::Migration[5.2]
  def change
    remove_column :user_sports, :favourite, :string
  end
end
