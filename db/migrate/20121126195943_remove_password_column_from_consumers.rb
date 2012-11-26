class RemovePasswordColumnFromConsumers < ActiveRecord::Migration
  def up
    remove_column :consumers, :password
  end

  def down
    add_column :consumers, :password, :string
  end
end
