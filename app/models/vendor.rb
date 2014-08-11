class Vendor < ActiveRecord::Base
  has_many :addresses, :dependent => :destroy
  has_many :certifications, :dependent => :destroy
  has_many :badges, :dependent => :destroy
  has_many :photos, :dependent => :destroy
  has_many :ratings
  has_one :user

  has_and_belongs_to_many :categories
  has_and_belongs_to_many :tags

  accepts_nested_attributes_for :addresses, allow_destroy: true
  accepts_nested_attributes_for :certifications, allow_destroy: true
  accepts_nested_attributes_for :badges, allow_destroy: true
  accepts_nested_attributes_for :photos, allow_destroy: true
  accepts_nested_attributes_for :categories, allow_destroy: true
  accepts_nested_attributes_for :tags, allow_destroy: true

  validates :description, presence: true
  validates :phone_work, presence: true
  validates :signup_date, presence: true
  validates :enabled, presence: true
  validates :paid, presence: true

  has_attached_file :logo, :styles => { medium: "300x300", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :logo, content_type: /\Aimage\/.*\Z/

  searchable do
    text :title, :description
    text :comments do
      comments.map { |comment| comment.body }
    end

    string :sort_title do
      title.downcase.gsub(/^(an?|the)/, '')
    end
  end
end
