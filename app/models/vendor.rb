class Vendor < ActiveRecord::Base
  has_many :locations, :dependent => :destroy
  has_many :addresses, :through => :locations

  has_many :vendor_tags, :dependent => :destroy
  has_many :tags, :through => :vendor_tags

  belongs_to :category
end
