class Tag < ActiveRecord::Base
  has_many :vendor_tags, :dependent => :destroy
  has_many :categories, :through => :vendor_tags
end
