class CreateMealComments < ActiveRecord::Migration[6.1]
  def change
    create_table :meal_comments do |t|
      t.integer :user_id
      t.integer :meal_id
      t.text :text
      t.timestamps
    end
  end
end
