class GiveDefaultsToBigMini < ActiveRecord::Migration[6.0]
  def change
    change_column :cart_items, :big, :integer, :default => 0
    change_column :cart_items, :mini, :integer, :default => 0
  end
end
