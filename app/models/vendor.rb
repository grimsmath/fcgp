class Vendor < ActiveRecord::Base
  has_many :locations, as: :locatable
  has_many :certifications, :dependent => :destroy
  has_many :badges, :dependent => :destroy
  has_many :photos, :dependent => :destroy

  belongs_to :member

  has_many :category_vendors, :dependent => :destroy
  has_many :categories, :through => :category_vendors

  has_and_belongs_to_many :tags

  accepts_nested_attributes_for :category_vendors, allow_destroy: true
  accepts_nested_attributes_for :locations, allow_destroy: true
  accepts_nested_attributes_for :certifications, allow_destroy: true
  accepts_nested_attributes_for :badges, allow_destroy: true
  accepts_nested_attributes_for :photos, allow_destroy: true
  accepts_nested_attributes_for :tags, allow_destroy: true

  has_attached_file :logo, :styles => { medium: "300x300", thumb: "150x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :logo, content_type: /\Aimage\/.*\Z/
end
