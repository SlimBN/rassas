class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :content
      t.integer :user_id
      t.integer :topic_id

      t.timestamps
    end
  end
end
