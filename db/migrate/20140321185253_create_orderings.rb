class CreateOrderings < ActiveRecord::Migration
  def change
    create_table :orderings do |t|
      t.integer :panel_id
      t.integer :configuration_id
      t.integer :order

      t.timestamps
    end
  end
end
