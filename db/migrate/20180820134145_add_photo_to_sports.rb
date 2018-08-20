class AddPhotoToSports < ActiveRecord::Migration[5.2]
  def change
    add_column :sports, :photo, :string
  end
end
