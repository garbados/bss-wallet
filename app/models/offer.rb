class Offer < ActiveRecord::Base
    belongs_to :merchant
    has_many :transactions

    validates_presence_of :name, :description, :coupon_value, :num_coupons, :point_value, :bid_value
    validates :name, :length => { :maximum => 50 }
    validates :description, :length => { :maximum => 140 }
end
