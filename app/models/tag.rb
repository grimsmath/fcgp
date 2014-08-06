class Tag < ActiveRecord::Base
  has_and_belongs_to_many :vendor
  has_and_belongs_to_many :member
end
