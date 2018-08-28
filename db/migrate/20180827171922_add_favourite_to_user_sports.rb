class AddFavouriteToUserSports < ActiveRecord::Migration[5.2]
  def change
    add_column :user_sports, :favourite, :boolean
  end
end
