class Member < ActiveRecord::Base
  has_many :locations, :dependent => :destroy
  has_many :addresses, :through => :locations
  has_one :user
end
