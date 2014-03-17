class CreateTexts < ActiveRecord::Migration
  def change
    create_table :texts do |t|
      t.text :content
      t.integer :panel_data_id

      t.timestamps
    end
    add_index :texts, :panel_data_id
  end
end
