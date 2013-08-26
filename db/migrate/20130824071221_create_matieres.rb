class CreateMatieres < ActiveRecord::Migration
  def change
    create_table :matieres do |t|
      t.string :nom
      t.string :slug
      t.integer :order
      t.integer :annee_id
      t.integer :professeur_id

      t.timestamps
    end
  end
end
