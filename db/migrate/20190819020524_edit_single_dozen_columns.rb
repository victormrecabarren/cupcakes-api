class EditSingleDozenColumns < ActiveRecord::Migration[6.0]
  def change
    add_column :cupcakes, :mini_price, :string
  end
end
