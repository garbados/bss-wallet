# == Schema Information
#
# Table name: coupons
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Coupon < ActiveRecord::Base
    

    #need to be on separate lines or gem 'annotate' is unhappy
    belongs_to :offer
    belongs_to :consumer

    validates_presence_of :offer_id, :consumer_id


end
