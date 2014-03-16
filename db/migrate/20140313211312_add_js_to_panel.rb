class AddJsToPanel < ActiveRecord::Migration
  def change
    add_column :panels, :js, :text
  end
end
