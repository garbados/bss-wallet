class DropMerchantsTable < ActiveRecord::Migration
  def up
    drop_table :merchants
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
