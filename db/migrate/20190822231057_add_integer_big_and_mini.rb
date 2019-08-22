class AddIntegerBigAndMini < ActiveRecord::Migration[6.0]
  def change
    add_column :cart_items, :big, :integer
    add_column :cart_items, :mini, :integer
  end
end
