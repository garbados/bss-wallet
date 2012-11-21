class AddOfferIdToCoupons < ActiveRecord::Migration
  def change
    add_column :coupons, :offer_id, :integer
  end
end
