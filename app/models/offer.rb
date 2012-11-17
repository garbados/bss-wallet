class Offer < ActiveRecord::Base
  attr_accessible :bid_value, :coupon_value, :description, :name, :num_coupons, :point_value, :expiration_date, :coupon_expiration_date
end
