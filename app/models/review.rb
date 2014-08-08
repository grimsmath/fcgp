class Review < ActiveRecord::Base
  belongs_to :vendor
  belongs_to :member

  validates :member_id, presence: true
  validates :vendor_id, presence: true
  validates :body, presence: true
  validates :rating, presence: true
end
