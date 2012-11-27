class RemoveStateColumnFromCoupons < ActiveRecord::Migration
  def up
    remove_column :coupons, :state
  end

  def down
    add_column :coupons, :state, :integer
  end
end
