class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.date :date
      t.integer :intensity
      t.string :photo
      t.integer :price
      t.string :location
      t.integer :capacity
      t.references :user, foreign_key: true
      t.references :sport, foreign_key: true

      t.timestamps
    end
  end
end
