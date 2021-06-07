class CreateSuccessComments < ActiveRecord::Migration[6.1]
  def change
    create_table :success_comments do |t|
      t.integer :user_id
      t.integer :success_id
      t.text :text
      t.timestamps
    end
  end
end
