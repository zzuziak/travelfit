class RemoveLevelFromUserSports < ActiveRecord::Migration[5.2]
  def change
    remove_column :user_sports, :level, :boolean
  end
end
