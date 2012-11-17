class Merchant < ActiveRecord::Base
  attr_accessible :address_st_1, :address_st_2, :city, :email, :rep_first_name, :rep_last_name, :state, :store_name, :zip
end
