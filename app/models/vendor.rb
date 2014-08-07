class Vendor < ActiveRecord::Base
  has_many :addresses, :dependent => :destroy
  has_many :certifications, :dependent => :destroy
  has_many :badges, :dependent => :destroy
  has_many :photos, :dependent => :destroy

  has_and_belongs_to_many :categories
  has_and_belongs_to_many :tags

  accepts_nested_attributes_for :addresses, allow_destroy: true
  accepts_nested_attributes_for :certifications, allow_destroy: true
  accepts_nested_attributes_for :badges, allow_destroy: true
  accepts_nested_attributes_for :photos, allow_destroy: true
  accepts_nested_attributes_for :categories, allow_destroy: true
  accepts_nested_attributes_for :tags, allow_destroy: true
end
