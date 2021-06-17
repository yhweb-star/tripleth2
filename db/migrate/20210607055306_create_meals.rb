class CreateMeals < ActiveRecord::Migration[6.1]
  def change
    create_table :meals do |t|
      t.string :title,         null: false
      t.text :text,         null: false
      t.integer :genre_id,           null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
