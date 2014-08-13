class MemberVendor < ActiveRecord::Base
  belongs_to :member
  belongs_to :vendor
end
