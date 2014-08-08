class Address < ActiveRecord::Base
  belongs_to :vendor
  belongs_to :member

  validates :street1, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :postal_code, presence: true
end
