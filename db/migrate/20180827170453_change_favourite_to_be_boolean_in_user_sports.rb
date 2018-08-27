class ChangeFavouriteToBeBooleanInUserSports < ActiveRecord::Migration[5.2]
 def self.down
    remove_column :user_sports, :favourite, :string
  end
end
