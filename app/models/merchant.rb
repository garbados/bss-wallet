class Merchant < ActiveRecord::Base

    has_many :offers

    validates_presence_of :store_name, :rep_first_name, :rep_last_name, :email, :address_st_1, :city, :state, :zip
    validates :rep_first_name, :rep_last_name, :length => { :maximum => 50 }
    #validates :email, :email_format => {:message => "not valid"}
    validates :address_st_1, :address_st_2, :length => { :maximum => 100 }
    validates :zip, :numericality => true
    validates_format_of :zip,
                        :with => %r{\d{5}(-\d{4})?},
                        :message => "should be 12345 or 12345-1234"
end
