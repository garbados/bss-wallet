# == Schema Information
#
# Table name: coupons
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  consumer_id :integer
#  offer_id    :integer
#  state       :integer
#

require 'test_helper'

class CouponTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
