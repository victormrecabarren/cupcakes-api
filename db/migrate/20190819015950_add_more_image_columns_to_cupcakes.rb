class AddMoreImageColumnsToCupcakes < ActiveRecord::Migration[6.0]
  def change
    add_column :cupcakes, :image1, :string
    add_column :cupcakes, :image2, :string
  end
end
