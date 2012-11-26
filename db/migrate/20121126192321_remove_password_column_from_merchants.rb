class RemovePasswordColumnFromMerchants < ActiveRecord::Migration
  def up
    remove_column :merchants, :password
  end

  def down
    add_column :merchants, :password, :string
  end
end
