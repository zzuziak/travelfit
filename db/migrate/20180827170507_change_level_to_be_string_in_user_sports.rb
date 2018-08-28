class ChangeLevelToBeStringInUserSports < ActiveRecord::Migration[5.2]
   def self.down
    remove_column :user_sports, :level, :boolean
  end
end
