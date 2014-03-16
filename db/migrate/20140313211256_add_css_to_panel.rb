class AddCssToPanel < ActiveRecord::Migration
  def change
    add_column :panels, :css, :text
  end
end
