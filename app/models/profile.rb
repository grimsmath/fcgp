class Profile < ActiveRecord::Base
  belongs_to :member

  has_one :location, as: :locatable, dependent: :destroy
  accepts_nested_attributes_for :location

  validates_presence_of :first_name, :last_name

  has_attached_file :avatar, :styles => { large: "640x640", medium: "250x250", thumb: "100x100" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  def full_name
    "#{last_name}, #{first_name}"
  end

  def with_blank_location
    if self.location.nil?
      build_location
    end

    self
  end
end
