class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.string :name
      t.text :description
      t.decimal :coupon_value
      t.integer :num_coupons
      t.integer :point_value
      t.decimal :bid_value
      t.date :offer_expiration_date
      t.date :coupon_expiration_date

      t.timestamps
    end
  end
end
