class Profile < ActiveRecord::Base
  belongs_to :member

  validates_presence_of :first_name, :last_name

  def full_name
    "#{last_name}, #{first_name}"
  end
end
