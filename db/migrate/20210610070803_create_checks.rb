class CreateChecks < ActiveRecord::Migration[6.1]
  def change
    create_table :checks do |t|
      t.integer :weight,         null: false
      t.string :image
      t.datetime :start_time,         null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
