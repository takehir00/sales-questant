class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :body, null: false
      t.integer :user_id, null: false, foreign_key: true
      t.timestamps
    end
  end
end
