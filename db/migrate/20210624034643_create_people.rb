class CreatePeople < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.integer    :height, null: false
      t.integer    :weight, null: false
      t.integer    :goal, null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
