class CreateTrainings < ActiveRecord::Migration[6.1]
  def change
    create_table :trainings do |t|
      t.string :title,         null: false
      t.integer :genre_id,           null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
