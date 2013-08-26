class CreateProfesseurs < ActiveRecord::Migration
  def change
    create_table :professeurs do |t|
      t.string :name
      t.string :slug

      t.timestamps
    end
  end
end
