class CreatePanelDatas < ActiveRecord::Migration
  def change
    create_table :panel_datas do |t|
      t.string :name
      t.integer :panel_id

      t.timestamps
    end
    add_index :panel_datas, :panel_id
  end
end
