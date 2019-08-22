class CreateCartItems < ActiveRecord::Migration[6.0]
  def change
    create_table :cart_items do |t|
      t.string :name
      t.string :price
      t.string :mini_price
      t.boolean :mini
      t.boolean :big
      t.string :image
      t.string :image1
      t.string :image2
      t.string :description
      t.string :carbs
      t.string :calories
      t.integer :amount

      t.timestamps
    end
  end
end
