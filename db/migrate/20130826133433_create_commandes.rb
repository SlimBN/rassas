class CreateCommandes < ActiveRecord::Migration
  def change
    create_table :commandes do |t|
      t.integer :user_id
      t.integer :cour_id
      t.boolean :done
      t.integer :number_o_pages

      t.timestamps
    end
  end
end
