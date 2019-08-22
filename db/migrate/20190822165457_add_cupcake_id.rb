class AddCupcakeId < ActiveRecord::Migration[6.0]
  def change
    add_column :cart_items, :cupcake_id, :integer
  end
end
