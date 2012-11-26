class DropConsumersTable < ActiveRecord::Migration
  def up
    drop_table :consumers
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
