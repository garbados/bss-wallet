# == Schema Information
#
# Table name: offers
#
#  id                     :integer          not null, primary key
#  name                   :string(255)
#  description            :text
#  coupon_value           :decimal(, )
#  num_coupons            :integer
#  point_value            :integer
#  bid_value              :decimal(, )
#  offer_expiration_date  :date
#  coupon_expiration_date :date
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  merchant_id            :integer
#

class Offer < ActiveRecord::Base
  belongs_to :merchant
  has_many :coupons

  validates_presence_of :name, :description, :coupon_value, 
    :num_coupons, :point_value, :bid_value, :merchant_id
  validates :name, :length => { :maximum => 50 }
  validates :description, :length => { :maximum => 140 }

  def increment_num_coupons
    num_coupons -= 1
  end

  def self.active_offers
    where("num_coupons > 0")
  end

  def self.offers_by_merchant(merchant_id)
    where("merchant_id = #{merchant_id}")
  end

  def num_coupons_claimed
    coupons.count
  end

end
