class Member < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :trackable,
         :validatable

  has_many  :locations, :as => :locatable
  has_many  :vendors
  has_many  :reviews, :dependent => :destroy
  has_one   :profile, :dependent => :destroy, autosave: true

  accepts_nested_attributes_for :profile
  accepts_nested_attributes_for :locations
end
