class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :university_id
      t.integer :year_id

      t.timestamps
    end
  end
end
