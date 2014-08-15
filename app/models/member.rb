class Member < ActiveRecord::Base
  accepts_nested_attributes_for :profile

  has_one :profile, dependent: :destroy, autosave: true

  has_many :vendors, :dependent => :destroy
  has_many :reviews, :dependent => :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
