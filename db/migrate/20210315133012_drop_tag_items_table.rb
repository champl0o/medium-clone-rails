class DropTagItemsTable < ActiveRecord::Migration[6.1]
  def up
    drop_table :tag_items
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
