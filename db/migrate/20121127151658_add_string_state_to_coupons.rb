class AddStringStateToCoupons < ActiveRecord::Migration
  def change
    add_column :coupons, :state, :string, :null => false, :default => "active"
  end
end
