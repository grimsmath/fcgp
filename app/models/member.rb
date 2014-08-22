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

  def user_type
    if self.super_admin?
      'Super Administrator'
    elsif self.admin?
      'Administrator'
    elsif self.moderator?
      'Moderator'
    else
      'User'
    end
  end

  def vendor_count
    Vendor.where(member_id: self.id).count
  end

  def vendor_reviews
    Review.where(member_id: self.id).count
  end
end
