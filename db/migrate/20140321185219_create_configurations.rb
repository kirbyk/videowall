class CreateConfigurations < ActiveRecord::Migration
  def change
    create_table :configurations do |t|
      t.string :name
      t.boolean :active

      t.timestamps
    end
  end
end
