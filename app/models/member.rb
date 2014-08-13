class Member < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :member_vendors, :dependent => :destroy
  has_many :vendors, :through => :member_vendors

  has_many :reviews, :dependent => :destroy
  has_many :locations, :dependent => :destroy
  has_many :addresses, :through => :locations
end
