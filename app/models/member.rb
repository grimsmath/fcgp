class Member < ActiveRecord::Base
  has_many :vendors, :dependent => :destroy
  has_many :reviews, :dependent => :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def full_name
    "#{last_name}, #{first_name}"
  end
end
