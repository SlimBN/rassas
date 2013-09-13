class CreateCours < ActiveRecord::Migration
  def change
    create_table :cours do |t|
      t.string :name
      t.string :slug
      t.integer :professeur_id
      t.integer :matiere_id

      t.timestamps
    end
  end
end
