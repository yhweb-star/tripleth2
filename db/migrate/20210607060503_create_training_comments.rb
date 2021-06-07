class CreateTrainingComments < ActiveRecord::Migration[6.1]
  def change
    create_table :training_comments do |t|
      t.integer :user_id
      t.integer :training_id
      t.text :text
      t.timestamps
    end
  end
end
