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
#

class Merchant < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,
    :store_name, :rep_first_name, :rep_last_name, :email, :address_st_1, 
    :address_st_2, :city, :state, :zip


  has_many :offers

  validates_presence_of :store_name, :rep_first_name, :rep_last_name, :email,
    :address_st_1, :city, :state, :zip, :password
  validates :rep_first_name, :rep_last_name, :length => { :maximum => 50 }
  validates :address_st_1, :address_st_2, :length => { :maximum => 100 }
  validates :zip, :numericality => true
  validates_format_of :zip,
                      :with => %r{\d{5}(-\d{4})?},
                      :message => "should be 12345 or 12345-1234"
  validates_uniqueness_of :email, :case_sensitive => false
  
end
