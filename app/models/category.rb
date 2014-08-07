class Category < ActiveRecord::Base
  has_many :vendors, :through => :vendor_category

  has_ancestry
end
