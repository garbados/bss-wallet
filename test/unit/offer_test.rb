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
#  num_views              :integer          default(0), not null
#  num_clicks             :integer          default(0), not null
#

require 'test_helper'

class OfferTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
