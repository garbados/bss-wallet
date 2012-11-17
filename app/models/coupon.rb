class Coupon < ActiveRecord::Base
    
    belongs_to :offer, :consumer

end
