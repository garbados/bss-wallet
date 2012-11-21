class AddForeignKeyToCoupons < ActiveRecord::Migration
  def change
    add_column :coupons, :consumer_id, :integer
  end
end
