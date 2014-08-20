class Profile < ActiveRecord::Base
  belongs_to :member

  validates_presence_of :first_name, :last_name

  has_attached_file :avatar, :styles => { medium: "250x250>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  def full_name
    "#{last_name}, #{first_name}"
  end
end
