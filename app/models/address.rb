class Address < ActiveRecord::Base
  has_many :locations, :dependent => :destroy
  has_many :individuals, :through => :locations
  has_many :vendors, :through => :locations
end
