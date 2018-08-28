class AddLevelToUserSports < ActiveRecord::Migration[5.2]
  def change
    add_column :user_sports, :level, :string
  end
end
