# == Schema Information
#
# Table name: merchants
#
#  id             :integer          not null, primary key
#  store_name     :string(255)
#  rep_first_name :string(255)
#  rep_last_name  :string(255)
#  email          :string(255)
#  address_st_1   :string(255)
#  address_st_2   :string(255)
#  city           :string(255)
#  state          :string(255)
#  zip            :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  password       :string(255)
#

require 'test_helper'

class MerchantTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
