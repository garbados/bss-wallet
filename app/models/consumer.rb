class Consumer < ActiveRecord::Base

    has_many :coupons
    
    validates :first_name, presence: true, :length => { :maximum => 50 }
    validates :last_name, presence: true, :length => { :maximum => 50 }
    validates :email, :email => true, :uniqueness => true
    validates_format_of :zip,
                        :with => %r{\d{5}(-\d{4})?},
                        :message => "should be 12345 or 12345-1234"
end
