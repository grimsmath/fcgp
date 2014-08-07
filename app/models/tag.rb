class Tag < ActiveRecord::Base
  has_many :vendor, :through => :vendor_tag
end
