class AddNombreToCour < ActiveRecord::Migration
  def change
    add_column :cours, :nombre, :integer
  end
end
