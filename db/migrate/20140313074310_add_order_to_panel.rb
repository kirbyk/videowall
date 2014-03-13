class AddOrderToPanel < ActiveRecord::Migration
  def change
    add_column :panels, :order, :integer
  end
end
