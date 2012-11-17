class Merchant < ActiveRecord::Base

    has_many :offers

    validates :store_name, presence: true, :uniquness => true
    validates :rep_first_name, presence: true, :length => { :maximum => 50 }
    validates :rep_last_name, presence: true, :length => { :maximum => 50 }
    validates :email, :email => true, :uniqueness => true
    validates :address_st_1, presence: true, :length => { :maximum => 100 }
    validates :address_st_2, :length => { :maximum => 100 }
    validates :city, presence: true
    validates :state, presence: true
    validates_format_of :zip,
                        :with => %r{\d{5}(-\d{4})?},
                        :message => "should be 12345 or 12345-1234"
end
