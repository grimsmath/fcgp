class Profile < ActiveRecord::Base
  belongs_to :member
  has_many :addresses, dependent: :destroy, autosave: true

  accepts_nested_attributes_for :addresses

  def full_name
    "#{last_name}, #{first_name}"
  end
end
