class CreateCharas < ActiveRecord::Migration[6.1]
  def change
    create_table :charas do |t|
      t.text       :text,              null: false
      t.integer    :area_id,           null: false
      t.integer    :gender_id,         null: false
      t.integer    :age,               null: false
      t.integer    :job_style_id,      null: false
      t.integer    :exercise_style_id, null: false
      t.references :user,              null: false, foreign_key: true
      t.timestamps
    end
  end
end
