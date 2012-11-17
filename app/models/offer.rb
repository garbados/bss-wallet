class Offer < ActiveRecord::Base

    belongs_to :merchant
    has_many :transactions
    validates :name, :length => { :maximum => 50 }
    validates :description, :length => { :maximum => 140 }
    validates :coupon_value, presence: true
    validates :num_coupons, presence: true
    validates :point_value, presence: true
    validates :bid_value, presence: true


end
