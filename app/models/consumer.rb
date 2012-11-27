# == Schema Information
#
# Table name: consumers
#
#  id         :integer          not null, primary key
#  first_name :string(255)
#  last_name  :string(255)
#  email      :string(255)
#  password   :string(255)
#  zip        :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Consumer < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,
    :first_name, :last_name, :zip

  has_many :coupons
  
  validates :first_name, presence: true, :length => { :maximum => 50 }
  validates :last_name, presence: true, :length => { :maximum => 50 }
  validates :zip, :numericality => true
  validates_format_of :zip,
                      :with => %r{\d{5}(-\d{4})?},
                      :message => "should be 12345 or 12345-1234"
  validates_uniqueness_of :email, :case_sensitive => false


end
