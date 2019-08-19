class CreateCupcakes < ActiveRecord::Migration[6.0]
  def change
    create_table :cupcakes do |t|
      t.string :name
      t.string :type
      t.string :calories
      t.string :carbs
      t.string :description
      t.string :price
      t.string :image

      t.timestamps
    end
  end
end
