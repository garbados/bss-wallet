class AddStateToCoupons < ActiveRecord::Migration
  def change
    add_column :coupons, :state, :integer
  end
end
