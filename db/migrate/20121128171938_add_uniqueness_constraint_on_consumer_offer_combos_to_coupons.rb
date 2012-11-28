class AddUniquenessConstraintOnConsumerOfferCombosToCoupons < ActiveRecord::Migration
  def change
    add_index :coupons, [:offer_id, :consumer_id], :unique => true
  end
end
