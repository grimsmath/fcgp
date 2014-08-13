class Address < ActiveRecord::Base
  belongs_to :vendor
  belongs_to :member
end
