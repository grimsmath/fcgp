class VendorTag < ActiveRecord::Base
  belongs_to :vendor
  belongs_to :tag
end
