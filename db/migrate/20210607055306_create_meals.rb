class CreateMeals < ActiveRecord::Migration[6.1]
  def change
    create_table :meals do |t|
      t.string :tiile,         null: false
      t.string :text,         null: false
      t.string :image,         null: false
      t.integer :genre_id,           null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
