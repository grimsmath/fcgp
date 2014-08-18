class Profile < ActiveRecord::Base
  belongs_to :member

  has_many :address, dependent: :destroy, autosave: true

  accepts_nested_attributes_for :address

  def full_name
    "#{last_name}, #{first_name}"
  end
end
