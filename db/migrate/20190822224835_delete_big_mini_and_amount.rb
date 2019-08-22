class DeleteBigMiniAndAmount < ActiveRecord::Migration[6.0]
  def change
    remove_column :cart_items, :big 
    remove_column :cart_items, :mini
    remove_column :cart_items, :amount
  end
end
