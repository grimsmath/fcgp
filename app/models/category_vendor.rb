class CategoryVendor < ActiveRecord::Base
  belongs_to :category
  belongs_to :vendor
end