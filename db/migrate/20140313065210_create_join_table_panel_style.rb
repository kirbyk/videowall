class CreateJoinTablePanelStyle < ActiveRecord::Migration
  def change
    create_join_table :panels, :styles do |t|
      # t.index [:panel_id, :style_id]
      # t.index [:style_id, :panel_id]
    end
  end
end
