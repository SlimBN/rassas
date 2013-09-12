class AddBalanceToCredits < ActiveRecord::Migration
  def change
    add_column :credits, :balance, :integer
  end
end
