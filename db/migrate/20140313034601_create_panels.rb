class CreatePanels < ActiveRecord::Migration
  def change
    create_table :panels do |t|
      t.string :name
      t.integer :width
      t.integer :height
      t.text :content
      t.boolean :active

      t.timestamps
    end
  end
end
