class CreateAnnees < ActiveRecord::Migration
  def change
    create_table :annees do |t|
      t.string :name
      t.string :slug
      t.integer :university_id
      t.integer :order

      t.timestamps
    end
  end
end
